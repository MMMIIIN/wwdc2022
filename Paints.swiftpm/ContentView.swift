import SwiftUI

enum ColorName: String {
    case Red = "Red"
    case Blue = "Blue"
    case Green = "Green"
}

struct ColorList {
    let colorName: String
    let color: Color
}

struct ContentView: View {
    @State var sumColor: Color = Color.white
    let colorList: [ColorList] = [ColorList(colorName: ColorName.Red.rawValue, color: Color.red),
        ColorList(colorName: ColorName.Blue.rawValue, color: Color.blue),
        ColorList(colorName: ColorName.Green.rawValue, color: Color.green)]
    var body: some View {
        VStack {
            HStack {
                ForEach(self.colorList, id: \.self.colorName, content: {
                    value in
                    RoundedRectangle(
                        cornerRadius: 20)
                        .fill(value.color)
                        .frame(width: 250, height: 250)
                        .onDrag({ NSItemProvider(object: value.colorName as NSString) })
                })
            }
            Divider()
                .padding(.vertical, 50)

            RoundedRectangle(cornerRadius: 20)
                .fill(sumColor)
                .frame(width: 400, height: 400)
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 0)
                .onDrop(of: ["public.text"], delegate: MyDropDelegate(color: $sumColor))
        }
    }
}

struct MyDropDelegate: DropDelegate {
    @Binding var color: Color

    func performDrop(info: DropInfo) -> Bool {
        if let item = info.itemProviders(for: ["public.text"]).first {
            item.loadItem(forTypeIdentifier: "public.text", options: nil) { (text, err) in
                if let data = text as? Data {
                    let inputStr = String(decoding: data, as: UTF8.self)
                    if inputStr == ColorName.Red.rawValue {
                        self.color = Color.red
                    } else if inputStr == ColorName.Blue.rawValue {
                        self.color = Color.blue
                    } else if inputStr == ColorName.Green.rawValue {
                        self.color = Color.green
                    } else {
                        self.color = .gray
                    }
                }
            }
        } else {
            return false
        }
        return true
    }
}
