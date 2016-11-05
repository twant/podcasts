$podcasts=[
   {
    :name =>"Patient Zero",
    :tags => ["colonialism", "health"],
    :description => "This podcast includes stories about...",
    :link => "http://www.radiolab.org/story/patient-zero-updated/",
    :podcast =>"Radiolab",
    :subject => ["geography", "usgovernment"],
    :image => "images/radiolab.jpeg"},
  {
    :name => "Mau Mau",
    :tags => ["colonialism", "england"],
    :description => "This podcast includes stories about...",
    :link => "http://www.radiolab.org/story/mau-mau/",
    :podcast =>"Radiolab",
    :subject => ["geography", "usgovernment"],
    :image => "images/radiolab.jpeg"
    },
  {
    :name => "Public Works: Rethinking America's Transportation Infrastructure",
    :tags => ["federalism", "congress", "pork-barrel spending", "pork barrel spending", "congressional elections", "budget priorities", "federal grants"],
    :description => "Focusing on roads as an example, the episode explores the reasons decisions about infrastructure are made the way they are. Also discusses Constitutional role of national vs. state governments wrt inrfrastructure and changes in public infrastructure over time.",
    :link => "http://99percentinvisible.org/episode/public-works-rethinking-americas-transportation-infrastructure/",
    :podcast =>"99 Percent Invisible",
    :subject => ["geography", "usgovernment"],
    :image => "images/99percent.jpg"
    },
    {
    :name => "Making Up Ground",
    :tags => ["land reclamation", "archeology", "westward expansion", "san francisco", "california gold rush"],
    :description => "Explores examples of several cities in different parts of the world, begiinning with the City of San Francisco, that have created their own land out of the sea. Interesting descritpion of archeological digs in SF in recent decades that uncovered entire ships that were buried under other debris and fill to extend the shore. Includes historical and modern examples.",
    :link => "http://99percentinvisible.org/episode/making-up-ground/",
    :podcast =>"99 Percent Invisible",
    :subject => ["geography", "ushistory"],
    :image => "images/99percent.jpg"
    }
    ]
$pod_list=[]
def get_tags(tags_list)
  tags_list.each do |tag|
    $podcasts.each do |pod|
      if pod[:tags].include?(tag)
        if $pod_list.include?(pod)==false
          $pod_list.push(pod)
        end
      end
    end
  end
end
def get_subjects(subject)
  $podcasts.each do |pod|
      if pod[:subject].include?(subject)
        if $pod_list.include?(pod)==false
          $pod_list.push(pod)
        end
      end
    end
end

def get_pods(tags, sub)
  get_tags(tags)
  get_subjects(sub)
  $pod_list
end

