<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output indent="yes" method="html" />
  <xsl:include href="../abstract/chrome.xsl" />

  <xsl:template name="content">

    <h1>PHP Content Repository</h1>

    <p>This is the API documentation of the PHP Content Repository API based on the Java Content Repository specification (<a href="http://java.net/projects/jsr-283/">JSR-283</a>). If you know JCR, get the <a href="https://raw.github.com/phpcr/phpcr/master/doc/JCR_TO_PHPCR.txt">differences between PHPCR and JCR at a glance</a>. To learn PHPCR, please have a look at our <a href="https://github.com/phpcr/phpcr/blob/master/doc/Tutorial.md">tutorial</a>.</p>

    <h2>Basic Workflow</h2>

    <p>
        <img src="meta/media/PHPCR.png" alt="" style="float:left; padding-right: 12px;"/>
        <pre>
        $factoryclass = '\Jackalope\RepositoryFactoryJackrabbit';
        $parameters = array('jackalope.jackrabbit_uri' =&gt; 'http://localhost:8080/server');
        // end of implementation specific configuration
        $factory = new $factoryclass();
        $repository = $factory-&gt;getRepository($parameters);
        $credentials = new \PHPCR\SimpleCredentials('admin','admin');
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
    </p>
    <p>For general information on PHPCR see <a href="http://phpcr.github.com/">phpcr.github.com</a></p>

  </xsl:template>

</xsl:stylesheet>
