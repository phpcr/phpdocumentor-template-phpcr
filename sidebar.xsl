<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:import href="../new-black/sidebar.xsl" />
    <xsl:output indent="yes" method="html" />

    <xsl:template name="content">
        <script type="text/javascript" src="{$root}js/jquery.cookie.js"></script>
        <script type="text/javascript" src="{$root}js/jquery.treeview.js"></script>
        <script type="text/javascript" src="{$root}js/sidebar.js"></script>
        <script type="text/javascript" src="{$root}js/phpcr-sidebar.js"></script>

        <div id="sidebar">
            <div id="sidebar-header">
                <a href="content.html" target="content">
                    <xsl:call-template name="sidebar-header" />
                </a>
            </div>

            <div id="sidebar-nav">
                <xsl:call-template name="sidebar-sections" />
            </div>

            <div id="sidebar-footer">
                <xsl:call-template name="sidebar-footer" />
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>