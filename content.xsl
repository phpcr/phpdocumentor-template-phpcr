<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output indent="yes" method="html" />
  <xsl:include href="../abstract/chrome.xsl" />

  <xsl:template name="content">
    <div class="introduction">
    <h1>PHP Content Repository</h1>

    <p>This is the API documentation of the PHP Content Repository API based on the Java Content Repository specification (<a href="http://java.net/projects/jsr-283/" target="_top">JSR-283</a>). If you know JCR, get the <a  target="_top" href="https://raw.github.com/phpcr/phpcr/master/doc/JCR_TO_PHPCR.txt">differences between PHPCR and JCR at a glance</a>. To learn PHPCR, please have a look at our <a href="https://github.com/phpcr/phpcr-docs/blob/master/tutorial/Tutorial.md" target="_top">tutorial</a>.</p>

    <p>For general information on PHPCR see <a href="http://phpcr.github.com/">phpcr.github.com</a></p>

    <h2>Basic Workflow</h2>

    <img src="images/PHPCR.png" alt="" title="PHPCR API model diagram" style="float:left; padding-right: 12px; width: 300px;"/>
    <pre>
    use PHPCR\SimpleCredentials;

    $factoryclass = 'Jackalope\RepositoryFactoryJackrabbit';
    $parameters = array(
        'jackalope.jackrabbit_uri' =&gt; 'http://localhost:8080/server',
    );
    // end of implementation specific configuration
    $factory = new $factoryclass();
    $repository = $factory-&gt;getRepository($parameters);
    $credentials = new SimpleCredentials('admin','admin');
    $session = $repository-&gt;login($credentials, 'default');
    $root = $session-&gt;getRootNode();
    $node = $root-&gt;addNode('test', 'nt:unstructured');
    $node-&gt;setProperty('prop', 'value');
    $session-&gt;save();
    ...
    $node = $session-&gt;getNode('/test');
    echo $node->getPropertyValue('prop');
    </pre>
    <br clear="all"/>

    <h2>License</h2>

    <p>
        PHPCR and this documentation are available under the
        <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_top">Apache Software License 2.0</a>.
    </p>
    </div>
  </xsl:template>

</xsl:stylesheet>
