import SwiftUI
import Combine

public extension View {
  @ViewBuilder
  func hideListRowSeperator() -> some View {
#if os(iOS)
    if #available(iOS 15, *) {
      listRowSeparator(.hidden)
        .listRowInsets(EdgeInsets(.zero))
    } else {
      frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .listRowInsets(EdgeInsets())
        .listRowInsets(EdgeInsets(top: -1, leading: -1, bottom: -1, trailing: -1))
    }
#endif

#if os(macOS)
    if #available(macOS 13, *) {
      listRowSeparator(.hidden)
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    } else {
      frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .listRowInsets(EdgeInsets())
        .listRowInsets(EdgeInsets(top: -1, leading: -1, bottom: -1, trailing: -1))
    }
#endif
  }
}
