<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>SDP Budget Visualizer</title>
        {cssmin array(
            "bulldog/tt.css",
            "bulldog/bootstrap/bootstrap.css",
            "bulldog/bootstrap/bootstrap-responsive.css",
            "bulldog/budget-base.css",
            "bulldog/budget-app.css"
        )}
        <script src="{Site::getVersionedRootUrl('js/bulldog/d3.v2.js')}"></script>
        {jsmin array(
            "bulldog/accounting.js",
            "bulldog/jquery.js",
            "bulldog/jquery.tablesorter.min.js",
            "bulldog/jquery.activity-indicator.js",
            "bulldog/bootstrap/bootstrap.js",
            "bulldog/bootstrap/bootstrap-transition.js",
            "bulldog/bootstrap/bootstrap-tooltip.js",
            "bulldog/tt.js",
            "bulldog/budgetvis.js",
        )}
    </head>
    <body onload="javascript:init()">
        <p id="chart"></p>
        <form class="form-search" onsubmit="return(updateResults('','','', 0));" id="searchform" action="#" name="searchform">
            <label for="search">Search for individual budget items</label><br>
            <input type="text" placeholder="Search text" id="search" class="search-query">
            <input type="button" class="btn" value="Submit" onclick="updateResults('','','',0)">
        </form>
        <div id="linkshare"></div>
        <h2 id="searchtitle"></h2>
        <div id="searchcount"></div>
        <div id="working"></div>
        <div id="results">
            <table id="resultstable" class="tablesorter table table-hover">
            </table>
        </div>
        <div id=more></div>
        <div id=debug></div>


        <div class="modal hide fade about" id="aboutmodal">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>About</h3>
            </div>
            <div class="modal-body">
                <h4>Mandel for Controller Bulldog Budget</h4>
                <p>The Mandel for Controller Bulldog Budget allows users, for the first time ever, to see how every single dollar of our money was spent from the Philadelphia city budget.  You can dig for information like a dog digs for a bone, but before you do, a note on navigation.</p>
                <p>The fiscal year 2012 covered by this site ran from July 1, 2011 to June 30, 2012</p>
                <p>The Philadelphia budget is adopted by City Council each year with expenditures approved by agency and by "class" and classes refer to:<br>
                <div class="c100">Class 100 - Salaries and fringe benefits</div>
                <div class="c200">Class 200 - Contracts for the purchase of services and leases</div>
                <div class="c300">Class 300 - Materials and supplies</div>
                <div class="c400">Class 400 - Equipment</div>
                <div class="c500">Class 500 - Contributions and indemnities (payments for compensation by the city)</div>
                <div class="c600">Class 600 - Not used in this budget</div>
                <div class="c700">Class 700 - Debt Service (payments for long-term loans/bonds)</div>
                <div class="c800">Class 800 - Payments to other funds</div>
                <div class="c900">Class 900 - Advances and miscellaneous payment</div>
                </p>
                <p>The city budget ordinance passed by City Council shows only how much money is allocated to each city agency and how that money is divided by class -- how much for personnel, how much for contracts, how much for supplies, and so on.  But, with the <a href="http://brettmandel.com">Mandel for Controller</a> Bulldog Budget you can search for any agency, vendor, or type of expenditure or click through each agency to each class to each type of expenditure to see a list of the actual payments down to the last cent.</p>
                <p>The Bulldog Budget was developed by Brett Mandel and Ben Garvey</p>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Back</button>
            </div>
        </div>
        <div class="modal hide fade help" id="helpmodal">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>Help</h3>
            </div>
            <div class="modal-body">
                <h4>How to Use This Tool</h4>
                <p>The budget data are presented in a clickable <a href="http://en.wikipedia.org/wiki/Treemapping">treemap</a>.  The area of each box is set according to the magnitude of the expenditures in that category.   Just click on the department or category to see greater and greater detail.  Once you dive down to the lowest level, click again to bring up a search listing of all the individual expenditures that make up that box.  Click the home bar to return to higher level views.</p>
                <p>To search for specific expenditures, use the search tool to search across all types of budget items.</p>
                <p>If you find any errors, pleeeeease email <a href="mailto:mandelforcontroller@gmail.com">Brett Mandel</a> so they can be corrected.</p>
                <p>The Bulldog Budget supports most modern web browsers.  You will experience problems using Internet Explorer 8 or less.</p>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Back</button>
            </div>
        </div>
    </body>
</html>
