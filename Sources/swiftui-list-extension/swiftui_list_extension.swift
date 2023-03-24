import SwiftUI

internal extension View {
  func hideListRowSeperator() -> some View {
    if #available(iOS 15, *) {
      return AnyView(self.listRowSeparator(.hidden)
        .listRowInsets(EdgeInsets()))
    } else {
      return AnyView(self.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .listRowInsets(EdgeInsets())
        .listRowInsets(EdgeInsets(top: -1, leading: -1, bottom: -1, trailing: -1)))
    }
  }
}
