## `azul-zulu:26-jdk-almalinux10`

```console
$ docker pull azul-zulu@sha256:417c933cf47162bbe39899664ca7e7ed8267116346eef1ffb77e634c87d8dba9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:73303a2466a13de5597bd8a280f92a0e4c8efadef2eaf4dd13b7ef29c8ceab57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255380783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a5935e192adb059c72fc79bd6580a71c1cfc3f51057a91d3aeeef00fcf19d5`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:37:15 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:15 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:15 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:37:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54df168fe055d9abaf6c1303b94b8cd983b83b9b56d8eed756bd73e20259f9e1`  
		Last Modified: Wed, 19 Aug 2026 17:37:33 GMT  
		Size: 186.8 MB (186818321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7fc2936c5a57882f69eb916c7518c945523d7ba142790c4ee6c05f36de44ef01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d123b8c793f92f0423213f107face33643091d0fd430efc185906ae97e5f348`

```dockerfile
```

-	Layers:
	-	`sha256:56f88ec4052081298f996867dc78b15c8f2be7147f012f7a3ca6ee324069b278`  
		Last Modified: Wed, 19 Aug 2026 17:37:29 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e9c4e6495166452b79a3f051f2588b179996d1a5b1e81311145427a1e3b22c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253671265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1eddff9d7424a594ded71b0e542a83ac8f105e2427a232f57ffd98a792d004`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:37:28 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:28 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:37:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:28 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:37:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0abdd14570ed6962be8774edb4dd3201182ca3bb19e1967a5d63b2eea02719`  
		Last Modified: Wed, 19 Aug 2026 17:37:48 GMT  
		Size: 186.5 MB (186529304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4aca17cfedc6f0baed5711b4a6c4e0dc71a29ece35a0cf263e1fa9965e6a3410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0698f6b904139688b5485b999eb9894dd6bb1211ea9471f43312a57a2c311c35`

```dockerfile
```

-	Layers:
	-	`sha256:bd88f73710a8637a2f17ef704dd2d439003618fd12ac9fa247540871a758f273`  
		Last Modified: Wed, 19 Aug 2026 17:37:43 GMT  
		Size: 9.6 KB (9589 bytes)  
		MIME: application/vnd.in-toto+json
