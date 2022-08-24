(setq jiralib-url "https://trusc.atlassian.net")
(setq org-jira-custom-jqls
      '(
        (:jql "project IN ('SALS', 'Sales App') ORDER BY created DESC"
         :filename "salesapp-board")
        ))
