## `azul-zulu:17-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:4fa619a3fae6faf7bc714b42c9817858e767a540ee1bf4b7a05c8170782ded6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:82d5d646ec88ae6b150fb590c1c6514b87bbaa406e48766ef77ee3ca5e9c3479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139266017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77dc94ac527a091c38e843ab7f7fb2550a954ea2ec173678e580a32ae0238b9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:01:10 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:10 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:01:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:01:10 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0fe99431f26aa221ac81a942a46d0b3856adde88a548ff641b9065d6bd3b8d`  
		Last Modified: Fri, 23 Oct 2026 20:01:21 GMT  
		Size: 70.4 MB (70386463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:afeda3a355231e8c2c9d64015deff67d638d3ac826695a600d240fbf168f2c40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de1ca229c842a4fc896c815d1b7075d5112b1708335cf51f42428ea01a99231`

```dockerfile
```

-	Layers:
	-	`sha256:73ca41cd817c4bd75cab548ac5cda01d12ac4efe6487134296fe650d7d1c0d56`  
		Last Modified: Fri, 23 Oct 2026 20:01:19 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b912582cb1c0f9b080d0d936771aea7fb81addf55dd08d5fa8418451a1633ae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137907202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97ce19f54fb0891ddb616a46f771677555bd2c6b3730e5699512cd65e564217`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:03:07 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:07 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:03:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:03:07 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae0931f1beffe57aa87959d6ef8912e282b57eb6f3d51d8e2b96d7005f5a3830`  
		Last Modified: Fri, 23 Oct 2026 20:03:20 GMT  
		Size: 70.4 MB (70449018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9039cdba6a212a5ed5b2b07f3629e681415b124c579533ed5c17b49550ffd004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef1840d53af82f112c034e99caacf102ee206355745ead4bc9fd6097138c097`

```dockerfile
```

-	Layers:
	-	`sha256:0d976acb12dce71b37879921a4886aa040b2821a5b54253830e788aaad49db7b`  
		Last Modified: Fri, 23 Oct 2026 20:03:18 GMT  
		Size: 9.3 KB (9326 bytes)  
		MIME: application/vnd.in-toto+json
