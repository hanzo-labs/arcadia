<!-- Step 1 -->
<article class="row">

  <h4 class="col-xs-12 clearfix" translate="OFFLINE_1_Title">Get Account Info (Online)</h4>

  <!-- From Address Input -->
  <section class="col-xs-10 clearfix">
    <div class="account-help-icon"><img src="images/icon-help.svg" class="help-icon" />
      <p class="account-help-text" translate="OFFLINE_1_Help_1">
        Note: This is the address you are sending *from*, not the address you are sending to.
      </p>
      <label translate="OFFLINE_1_Label_1"> Sending Address </label>
    </div>
    <input class="form-control" type="text" placeholder="0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8" ng-model="tx.from" ng-change="validateAddress(tx.from,'')"/>
  </section>
  <!-- From Address Icon -->
  <section class="col-xs-2">
    <div class="addressIdenticon" title="Address Indenticon" blockie-address="{{tx.from}}" watch-var="tx.from"></div>
  </section>


  <!-- Button -->
  <section class="col-xs-12 clearfix">
    <a class="btn btn-info" ng-click="getWalletInfo()" translate="OFFLINE_1_Button">Get Info</a>
  </section>


  <section class="clearfix" ng-show="showWalletInfo">

    <!-- Gas Price -->
    <div class="col-xs-6 col-sm-5">
      <label translate="TRANS_gasprice"> Gas Price </label>
      <input class="form-control" type="text"  readonly="readonly" ng-model="gasPriceDec"/>
    </div>

    <!-- Nonce -->
    <div class="col-xs-6 col-sm-5">
      <label translate="TRANS_gasnonce"> Nonce </label>
      <input class="form-control" type="text"  readonly="readonly" ng-model="nonceDec"/>
    </div>

  </section>

</article>
<!-- / Step 1 -->
