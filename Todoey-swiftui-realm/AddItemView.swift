import SwiftUI
import RealmSwift

struct AddItemView: View {
    @Binding var isPresented: Bool
    @State private var title = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("项目名称", text: $title)
            }
            .navigationTitle("添加新项目")
            .navigationBarItems(
                leading: Button("取消") {
                    isPresented = false
                },
                trailing: Button("添加") {
                    let realm = try! Realm()
                    try! realm.write {
                        let newItem = Item()
                        newItem.title = title
                        newItem.done = false
                        realm.add(newItem)
                    }
                    isPresented = false
                }
                .disabled(title.isEmpty)
            )
        }
    }
}
