# E-Commerce-and-Food-Ordering-System-1.1

Changelogs: May 7, 2021
SELOR:
1. In cart page, changing the quantity of a product to negative, 0 and more than the
available stocks is not being accepted. Pop-up message appears to identify the error.
2. On setting the quantity to more than the available stock, the item does not disappear
anymore, instead a pop-up message will appear and return the quantity to its previous value.

BROFI:
1. "Products" in the header was already removed, there was no plan for the actual All products page
It was for the presentation of the prototype last semester.
2. Clicking on the Products in the navbar will only reveal the dropdown list
Previously, it showed the list on hover but now it is triggered upon clicking.

CUSPR:
1. Added validation on all textboxes, also removed the password textbox.

ORPAY:
1. Removed the Increase/Decrease button, because the only event that can be
applied to a textbox is "TextChanged" and that event is needed to update the
price of the product in the cart as well as the summary of payment/total price. 

  Everytime the value inside will be changed it will trigger postback and 
refresh the page. This way the user will only type the quantity instead 
of manually clicking the increase/decrease, which can be disorienting.

ADDIT:
1. In the Add items page of backend, added validators to the inputs to be required and avoid
empty values being outputted for an item, and formatting input to what is necessary(e.g. numbers/words)

UPDIT:
1. Same changes made above also Added to Update items function.

CHKOR:
1. added to web.config connection string to fix datareader error (MultipleActiveResultSets=True)
//add to your web.config

Extra Changelogs: (based on revisions)
1. Added Shipped status in User Orders page.
2. Added a cancel button un user orders page, wherein the user can only see the button
for 24 hours after confirming the order. When they cancel their order the stock will be
returned and the status from pending will becomed canceled.
3. (CHKOR) Added two more statuses for Orders which are Shipped and Returned.
