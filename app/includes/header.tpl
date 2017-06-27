<!DOCTYPE html>
<html lang="en" ng-app="mewApp">
<head>
  <meta charset="utf-8">
  <title></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/etherwallet-master.min.css">
  <script type="text/javascript" src="js/etherwallet-static.min.js"></script>
  <script type="text/javascript" src="js/etherwallet-master.js"></script>

  <link rel="apple-touch-icon" sizes="180x180" href="images/fav/apple-touch-icon.png">
  <link rel="icon" type="image/png" href="images/fav/favicon-32x32.png" sizes="32x32">
  <link rel="icon" type="image/png" href="images/fav/favicon-16x16.png" sizes="16x16">
  <link rel="manifest" href="images/fav/manifest.json">
  <link rel="mask-icon" href="images/fav/safari-pinned-tab.svg" color="#0e97c0">
  <link rel="shortcut icon" href="images/fav/favicon.ico">
  <meta name="msapplication-config" content="images/fav/browserconfig.xml">
  <meta name="theme-color" content="#163151">

  <meta property="og:url"         content="" />
  <meta property="og:title"       content="" />
  <meta property="og:description" content="" />
  <meta property="og:image"       content="" />
  <meta property="og:image"       content="" />
</head>

<body>

<header class="{{curNode.name}} {{curNode.service}} {{curNode.service}} nav-index-{{gService.currentTab}}" aria-label="header" ng-controller='tabsCtrl' >

<!--
    <div class="small announcement annoucement-warning">
      <div class="container">The #FOMO is Real. Breath. If you are trying to get in on Status.im, <strong> wait until BLOCK 3903900!</strong> <br /> If your TX is not urgent, we recommend NOT SENDING TODAY. Thank you for understanding. </div>
    </div>
-->
    @@if (site === 'cx' ) {
    <div class="small announcement annoucement-warning">
        <div class="container" translate="CX_Warning_1">Make sure you have <strong>external backups</strong> of any
            wallets you store here. Many things could happen that would cause you to lose the data in this Chrome
            Extension, including uninstalling the extension. This extension is a way to easily access your wallets,
            <strong>not</strong> a way to back them up.
        </div>
    </div>
    }
  <section class="bg-gradient header-branding">
    <section class="container">

        <!-- Warning: The separators you see on the frontend are in styles/etherwallet-custom.less. If you add / change a node, you have to adjust these. Ping tayvano if you're not a CSS wizard -->

      </div>
    </section>
  </section>

  <nav role="navigation" aria-label="main navigation" class="container nav-container overflowing" >
    <a aria-hidden="true" ng-show="showLeftArrow" class="nav-arrow-left" ng-click="scrollLeft(100);" ng-mouseover="scrollHoverIn(true,2);" ng-mouseleave="scrollHoverOut()">&#171;</a>
    <div class="nav-scroll">
      <ul class="nav-inner">
        @@if (site === 'mew' ) {
        <li ng-repeat="tab in tabNames track by $index" class="nav-item {{tab.name}}" ng-class="{active: $index==gService.currentTab}" ng-show="tab.mew" ng-click="tabClick($index)"> <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a></li>
        }
        @@if (site === 'cx' ) {
        <li ng-repeat="tab in tabNames track by $index" class="nav-item {{tab.name}}" ng-class="{active: $index==gService.currentTab}" ng-show="tab.cx" ng-click="tabClick($index)"> <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a></li>
        }
      </ul>
    </div>
    <a aria-hidden="true" ng-show="showRightArrow" class="nav-arrow-right" ng-click="scrollRight(100);" ng-mouseover="scrollHoverIn(false,2);" ng-mouseleave="scrollHoverOut()">&#187;</a>
  </nav>

  @@if (site === 'mew' ) { @@include( './header-node-modal.tpl', { "site": "mew" } ) }
  @@if (site === 'cx'  ) { @@include( './header-node-modal.tpl', { "site": "cx"  } ) }

</header>
