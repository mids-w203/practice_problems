<div class="ui raised segment" id="prob-{{problem.title}}"> 
    <div class="title">
        <div class="ui right floated left labeled button" tabindex="0">
            {% if problem.answer and problem.answer != '' %}
            <a class="ui basic green right pointing label">
                {{problem.answer }} 
            </a>
            {% endif %}
            {% if problem.content != '' %}
            <button class="ui icon green small button">
                Solution
                <i class="dropdown icon"></i>
            </button>
            {% endif %}
        </div>    
        <b>Problem {{problem.title}}: 
            {% if problem.caption and problem.caption != '' %}
            ({{ problem.caption }})
            {% endif %}
        </b>
 
        {% for ref in site.references %}
        {% if ref.title == problem.ref %}
        <a class="ui small icon basic button" href="#ref-{{ref.title}}">
        {{ problem.tag }} 
        | {{ref.title | upcase }}<i class="ui blue down arrow icon"></i>
        </a>
        {% endif %}
        {% endfor %}
        
        <br><br>
        {{ problem.statement | markdownify }}
    </div>  
    <div class="active content"
      style="border: 1px solid rgb(93, 180, 93);padding: 5px;
          border-radius: 4px;">
        {% if problem.content != '' %}
          <b>Solution:</b>
          {{ problem.content | markdownify }}
        </p>
        {% endif %}
    </div>
</div>