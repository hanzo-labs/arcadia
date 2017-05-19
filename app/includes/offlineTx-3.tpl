<!-- Decrypt -->
<article>

  <br /><hr /><br />

  <h4 translate="OFFLINE_3_Title"> Sign Transaction (Offline) </h4>

  <wallet-decrypt-drtv></wallet-decrypt-drtv>

</article>

<!-- Signed Tx -->
<article class="row" ng-show="wallet!=null">
  <div class="col-sm-6">
    <label translate="SEND_raw"> Unsigned Transaction </label>
    <textarea class="form-control" rows="5" ng-model="rawTx"></textarea>
  </div>
 <div class="col-sm-6">
    <label translate="SEND_signed
SEND_signed"> Signed Transaction </label>
    <textarea class="form-control"  readonly="readonly" rows="5" ng-model="signedTx"></textarea>
  </div>
</article>

<!-- Button -->
<article class="row" ng-show="wallet!=null">
  <section class="col-sm-6">
    <a class="btn btn-info" ng-click="generateTx()" translate="OFFLINE_3_Button">Generate Signed Transaction</a>
  </section>
  <section class="col-sm-6">
    <div class="qr-code" qr-code="{{signedTx}}" watch-var="signedTx" width="100%" style="margin-top: -6.5rem"></div>
  </section>
</article>
