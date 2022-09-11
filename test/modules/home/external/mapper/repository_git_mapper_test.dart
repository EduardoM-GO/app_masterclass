import 'package:app_masterclass/modules/home/external/mapper/repository_git_mapper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('repository git mapper - OK', () async {
    final result = RepositoryGitMapper().fromMap({
      "id": 287140329,
      "node_id": "MDEwOlJlcG9zaXRvcnkyODcxNDAzMjk=",
      "name": "AkinatorLOL",
      "full_name": "EduardoM-GO/AkinatorLOL",
      "private": false,
      "owner": {
        "login": "EduardoM-GO",
        "id": 68598652,
        "node_id": "MDQ6VXNlcjY4NTk4NjUy",
        "avatar_url": "https://avatars.githubusercontent.com/u/68598652?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/EduardoM-GO",
        "html_url": "https://github.com/EduardoM-GO",
        "followers_url": "https://api.github.com/users/EduardoM-GO/followers",
        "following_url":
            "https://api.github.com/users/EduardoM-GO/following{/other_user}",
        "gists_url": "https://api.github.com/users/EduardoM-GO/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/EduardoM-GO/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/EduardoM-GO/subscriptions",
        "organizations_url": "https://api.github.com/users/EduardoM-GO/orgs",
        "repos_url": "https://api.github.com/users/EduardoM-GO/repos",
        "events_url":
            "https://api.github.com/users/EduardoM-GO/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/EduardoM-GO/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/EduardoM-GO/AkinatorLOL",
      "description": "Akinator sobre League of Legends feito em Árvore binária",
      "fork": false,
      "url": "https://api.github.com/repos/EduardoM-GO/AkinatorLOL",
      "forks_url": "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/forks",
      "keys_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/teams",
      "hooks_url": "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/hooks",
      "issue_events_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/events",
      "assignees_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/branches{/branch}",
      "tags_url": "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/tags",
      "blobs_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/languages",
      "stargazers_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/stargazers",
      "contributors_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/contributors",
      "subscribers_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/subscribers",
      "subscription_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/subscription",
      "commits_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/merges",
      "archive_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/downloads",
      "issues_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/EduardoM-GO/AkinatorLOL/deployments",
      "created_at": "2020-08-13T00:06:20Z",
      "updated_at": "2020-08-13T00:17:36Z",
      "pushed_at": "2020-08-13T00:16:15Z",
      "git_url": "git://github.com/EduardoM-GO/AkinatorLOL.git",
      "ssh_url": "git@github.com:EduardoM-GO/AkinatorLOL.git",
      "clone_url": "https://github.com/EduardoM-GO/AkinatorLOL.git",
      "svn_url": "https://github.com/EduardoM-GO/AkinatorLOL",
      "homepage": "",
      "size": 25392,
      "stargazers_count": 0,
      "watchers_count": 0,
      "language": "Java",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 0,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 0,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "web_commit_signoff_required": false,
      "topics": [],
      "visibility": "public",
      "forks": 0,
      "open_issues": 0,
      "watchers": 0,
      "default_branch": "master"
    });
    expect(result.nome, 'AkinatorLOL');
    expect(result.descricao,
        'Akinator sobre League of Legends feito em Árvore binária');
    expect(result.linguagem, 'Java');
    expect(result.link, 'https://github.com/EduardoM-GO/AkinatorLOL');
  });
}
