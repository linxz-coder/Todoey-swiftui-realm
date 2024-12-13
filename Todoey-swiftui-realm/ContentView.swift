import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
        let item1 = Item()
        item1.title = "buy food"
        item1.done = false
        
        let item2 = Item()
        item2.title = "Eat food"
        item2.done = false
        
        let item3 = Item()
        item3.title = "Enjoy food"
        item3.done = false
        
        let item4 = Item()
        item4.title = "Discard food"
        item4.done = false
        
        
        @State var data = [
            item1,
            item2,
            item3,
            item4,
        ]
        
        NavigationView{
            //MARK: - itemView
            List(data.indices, id: \.self) { index in
                HStack {
                    Text(data[index].title)
                    Spacer()
                    if data[index].done {
                        Image(systemName: "checkmark")
                            .foregroundColor(.green)
                    }
                    
                }
            }
            //点击手势
            .contentShape(Rectangle())
            .onTapGesture {
                data[index].done = true
            }
            
            //MARK: - title
            .navigationTitle("")
            .toolbar{
                ToolbarItem(placement: .principal){
                    HStack {
                        Text("待办清单")
                            .font(.largeTitle)
                            .padding(.leading, 20)
                            .padding(.top, 80)
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
