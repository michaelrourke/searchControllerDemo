# Demo of iOS 11 UISearchController
# In Detail View of UISplitViewController

Strange things happen when using the new iOS 11 navigationItem.searchController method on detail view of a UISplitViewController.

Try running on iPhone, clicking through to detail, and then returning to the page with the search controller - a couple of times.
You should note:

1. UISearchBar not shown initially (although the space is visible)
2. On clicking an entry the UISearchBar is shown on the APLDetailViewController view.
3. On returning - no space or UISearchBar.
4. On clicking an entry again - correct display.
5. On returning - UISearchBar correctly displayed.

Compare this to iOS 10 and putting in tableHeaderView.

It seems to relate to the extra interposed UINavigationController you get when in Compact mode.

If you do either of the following it will work correctly
    - run in Regular (ipad or iPhone Plus in Landscape)
    - change the "showDetail" segue that pushes APLMainTableViewController to modal
    - reroute the "showDetail" segue that pushes APLMainTableViewController to bypass the Detail UINavigationController (yes this breaks device rotation and resizing - but demonstrates how it relates to the extra UINavigationController )

This code is a combination of the default project for UISplitViewController and the Apple demo of UISearchController.

Any suggestions as to why would be appreciated!

Michael

## Build Requirements
+ iOS 11 SDK or later

## Runtime Requirements
+ iOS 8.0 or later
