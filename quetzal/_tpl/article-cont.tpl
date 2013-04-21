<!-- MAIN ARTICLE -->
<div class="span8 article-container">
    <article class="main-article single-1">                                    
        
        <header>
            <span class="article-info">
                <time datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%dT%H:%MZ"}}">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }}</time> 
                By {{ list_article_authors }} {{ if $gimme->author->user->defined}}<a href="{{ $view->url(['username' => $gimme->author->user->uname], 'user') }}" class="red-text">{{/if}}{{ $gimme->author->name }}{{if $gimme->author->user->defined }}</a>{{/if}} ({{ $gimme->author->type|lower }}) {{ if !$gimme->current_list->at_end }}, {{/if}}{{/list_article_authors}}
            {{ if $gimme->article->has_map }}
            <span class="pull-right visible-desktop">Location(s): {{ list_article_locations }}{{ if $gimme->location->enabled }}{{ $gimme->location->name }}{{ if $gimme->current_list->at_end }}{{ else }}, {{ /if }}{{ /if }}{{ /list_article_locations }}</span> <span class="visible-phone">Location(s): {{ list_article_locations }}{{ if $gimme->location->enabled }}{{ $gimme->location->name }}{{ if !$gimme->current_list->at_end }}, {{ /if }}{{ /if }}{{ /list_article_locations }}</span>
            {{/if}}
            </span>
            <div class="clearfix"></div>
            {{ include file="_tpl/img/img_300x300.tpl"}}
            <h1>{{ $gimme->article->name }}</h1>
        </header>

        <section class="article-content">
            {{ include file="_tpl/img/img_300x300.tpl" where="mobile"}}
            {{ include file="_tpl/_edit-article.tpl" }}{{ $gimme->article->full_text }}
        </section>

        <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style">
            <a class="addthis_button_facebook_send visible-desktop"></a>
            <a class="addthis_button_facebook_like visible-desktop" fb:like:layout="standard"></a>
            <a class="addthis_button_facebook_like visible-phone" fb:like:layout="button_count"></a>
            <a class="addthis_button_tweet"></a>
            <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
        </div>
        <!-- AddThis Button END -->
        {{ include file="_tpl/article-comments.tpl" }}
        </section>

    </article>
</div>
