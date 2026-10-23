## `azul-zulu:11-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:8816fcf3020725224093ce9d670c84837cc1a6e8c365126b9d4ffae78019fb5f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:58bae18b45965985b6f83296ce612472dc85944fea13f24c51d069ed7a729c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.2 MB (216238422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff284fb1225ae8f6898c18a0b12799fdb89e048fec7b61517373bb421b0faf82`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:00:24 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:24 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:00:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:00:24 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:00:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801fe691a900e62c31d8e4c3316a317c30b0f34584180837c68dc2bf748e4b83`  
		Last Modified: Fri, 23 Oct 2026 20:00:38 GMT  
		Size: 147.4 MB (147358868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:297c2fc0d43f5bec2ebd68882d18e5227ffe7b901cbb13cc9178fc02f37a65d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cfb2099c95f8a31bed68bfcdfff65f9fb24302860a6c2a08af5f2b6ab5e54cc`

```dockerfile
```

-	Layers:
	-	`sha256:b6d4dec74815818f099055700b53bfb65e0e10d7e459a70c9f0883785049c2bd`  
		Last Modified: Fri, 23 Oct 2026 20:00:35 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a4ea79664db46abba48de278af753b93813307cdeb13bf7f951fc0c1b4731fe7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.5 MB (214511604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0fa20514bb504a0df36b3d805cdedb46de5d19fd470bdfa977e6333e50933f8`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:00:32 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:32 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:00:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:00:32 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:00:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b33291c3e3512e13e500c2900910800279cee70d0650f893f37787a5be0bce6`  
		Last Modified: Fri, 23 Oct 2026 20:00:49 GMT  
		Size: 147.1 MB (147053420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0b3e77794c15dc02b74917dbb4b658eb1b5fb82ef2d1dc21ab6fd899907a0276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a6cfb7726be0ec541bb66d6ae32c6440eaa4c5b564246e6f92a2d75fa45614`

```dockerfile
```

-	Layers:
	-	`sha256:d445d19d705179af90dba3e2b3af0528e289e2839005f3cc658e7e40173ec1bd`  
		Last Modified: Fri, 23 Oct 2026 20:00:45 GMT  
		Size: 9.6 KB (9585 bytes)  
		MIME: application/vnd.in-toto+json
