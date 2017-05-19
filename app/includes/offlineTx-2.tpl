<article class="row">
  <br /><hr /><br />
  <h4 class="col-xs-12" translate="OFFLINE_2_Title"> Generate Transaction (Offline or Online) </h4>
</article>


<!-- To Address -->
<article class="row">
  <section class="col-xs-10">
    <label translate="SEND_addr">To Address</label>
    <input class="form-control"
           type="text"
           placeholder="0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8"
           ng-model="tx.to"
           ng-change="validateAddress(tx.to,'')"/>
  </section>

  <section class="col-xs-2">
    <div class="addressIdenticon" title="Address Indenticon" blockie-address="{{tx.to}}" watch-var="tx.to"></div>
  </section>
</article>


<!-- Amount to Send -->
<article class="row">
  <section class="col-sm-10">
    <label translate="SEND_amount">Amount to Send</label>
    <div class="input-group">
      <input class="form-control" type="text" placeholder="{{ 'SEND_amount_short' | translate }}" ng-model="tx.value"/>
      <div class="input-group-btn">
        <a class="btn btn-default dropdown-toggle"
           ng-click="dropdownAmount = !dropdownAmount"
           ng-class="dropdownEnabled ? '' : 'disabled'">
              {{unitReadable}}<i class="caret"></i>
        </a>
        <ul class="dropdown-menu dropdown-menu-right" ng-show="dropdownAmount">
          <li><a ng-class="{true:'active'}[tokenTx.id == 'ether']" ng-click="setSendMode('ether')">{{ajaxReq.type}}</a></li>
          <li ng-repeat="token in tokenObjs track by $index">
            <a ng-class="{true:'active'}[tokenTx.id == $index]" ng-click="setSendMode($index, token.getSymbol())" > {{token.getSymbol()}} </a>
          </li>
        </ul>
      </div>
    </div>
  </section>
</article>

<!-- Gas Price -->
<article class="row">
  <section class="col-sm-10">
    <div class="account-help-icon"><img src="images/icon-help.svg" class="help-icon" />
      <p class="account-help-text" translate="OFFLINE_2_Help_1">This was displayed in Step 1.</p>
      <label translate="TRANS_gasprice"> Gas Price </label>
    </div>
    <input class="form-control" type="text"  ng-model="gasPriceDec"/>
  </section>
</article>

<!-- Gas Limit -->
<article class="row">
  <section class="col-sm-10">
    <div class="account-help-icon"><img src="images/icon-help.svg" class="help-icon" />
      <p class="account-help-text" translate="OFFLINE_2_Help_2">21000 is the default. Tokens use 150000+. Complex contracts may need more. You shouldn\'t ever need to go over 500000</p>
      <label translate="TRANS_gas"> Gas Limit </label>
    </div>
    <input class="form-control" type="text"  ng-model="tx.gasLimit"/>
  </section>
</article>

<!-- Nonce -->
<article class="row">
  <section class="col-sm-10">
    <div class="account-help-icon"><img src="images/icon-help.svg" class="help-icon" />
      <p class="account-help-text" translate="OFFLINE_2_Help_3">Get this in Step 1. It's the number of transactions that have been sent from an address. Prevents double-spends.</p>
      <label translate="TRANS_gasnonce"> Nonce </label>
    </div>
    <input class="form-control" type="text"  ng-model="nonceDec"/>
  </section>
</article>

<!-- Data -->
<article class="row">
  <section class="col-sm-10" ng-show="tokenTx.id=='ether'">
  <label translate="TRANS_data"> Data </label>
  <input class="form-control" type="text" placeholder="0x4d792045746865722057616c6c6574" id="offlineData" ng-model="tx.data" />
  </section>
</article>

<!-- Button -->
<article class="row">
  <section class="col-sm-10">
    <a class="btn btn-info" ng-click="generateTx()" translate="OFFLINE_2_Button">Generate Unsigned Transaction</a>
  </section>
</article>

<!-- Raw Tx -->
<article class="row">
  <div class="col-sm-8">
    <label translate="SEND_raw" translate="SEND_raw"> Unsigned Transaction </label>
    <textarea class="form-control" readonly="readonly" rows="5" ng-model="rawTx"></textarea>
  </div>
</article>


