## `azul-zulu:26-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:35ab71a656f4257570a09acfd83e9c03bec30ce6b8d613bf13a370b8ca82e98e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:96bf798d5af06494cd13508c569c2ecfb77d6cbda6d233c2e3ac93cd14167689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256424899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e6a6566810271016e8acf147c5e48a27477dbbc9ba73e2a6d0033cf8c2bca2`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:28:08 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:28:08 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:28:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:28:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 27 Oct 2026 17:28:08 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:28:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7589e4737ae1bb43c16a84b19be8b7e35403298c5f70f79974c67619f66bd58d`  
		Last Modified: Tue, 27 Oct 2026 17:28:25 GMT  
		Size: 187.3 MB (187325624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:163b1682a634603c1530a2bb97d02d7198558b24cea0b1b37020d498b16366a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db7abbb7bde98334606b75ef8f0cfc9aa01a779b78440e4bd0b9a91b20efb63`

```dockerfile
```

-	Layers:
	-	`sha256:169454f925898fe5ba423b225a9ff65d782995789bc7a5295c4db6a9d5507230`  
		Last Modified: Tue, 27 Oct 2026 17:28:21 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1b4eb1cbeb211851060a3db6a11b627511a2e49976e0963bdc391396584dd0dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254698742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c0da8c4dc1189417a0d6c6ad4f032c2edecddab262e3d809432c352bbe2817`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:24:14 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:24:14 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:24:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:24:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 27 Oct 2026 17:24:14 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:24:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb8a41d5a664dde467d9c7b0d5566780f51ab076af68e96fd3d99c910ade8334`  
		Last Modified: Tue, 27 Oct 2026 17:24:35 GMT  
		Size: 187.0 MB (187032231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fdfe4b29bb8239d96d81d47074fd261f35c6ef438c9ff21e229a48530973a5c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14a10b95257f422c119d388bfd88e0e6cb33a79972d762030f4c9186eede5b60`

```dockerfile
```

-	Layers:
	-	`sha256:4c915f95bdc66c9363e293b8aecb969a3c4817a2e02d08c37037603618ca25ca`  
		Last Modified: Tue, 27 Oct 2026 17:24:29 GMT  
		Size: 9.6 KB (9588 bytes)  
		MIME: application/vnd.in-toto+json
