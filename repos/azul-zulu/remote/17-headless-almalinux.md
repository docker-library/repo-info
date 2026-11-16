## `azul-zulu:17-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:526e7b2048937e178283ce5fd93b511cc3a14e11acc9c98f899187bf708bd894
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a40b4a7c6eeccce9118726e254b30ded97bef9ebabad0447847a6935bb789ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.3 MB (220295320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eedd362ab3415673bd55e296a22085ff9bd4e6124cc7eacd1cdf5d036c84e38`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:32 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:32 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-headless-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 18:10:32 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb751bbd0dbbf9f3a7bd9d1f832cba1bace75b9db662b4ec6bbed73dcdf26795`  
		Last Modified: Mon, 16 Nov 2026 18:10:47 GMT  
		Size: 151.2 MB (151169541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:547060f8f199f59b3e98a4d365379982675299615b51906d6f92507ba884a36f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010f14cef94ba583ad38708c2c02ef84e885777dc8e1c4863ce7e141e1a8c90e`

```dockerfile
```

-	Layers:
	-	`sha256:99ef8abe0cd623e25e549c12c5ed91c9b5883eb4ed11baeed5bf27b26ed3de8d`  
		Last Modified: Mon, 16 Nov 2026 18:10:44 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:762c2642a71d69202210273cc07a5293fce7414754202590a3b271dbacf53f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218931994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca096452ad65a72c37c6f1eb1b95b6e3b67f3cf6b340822d5e0dfeaf6b8b0fe`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:29 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:29 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-headless-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 18:10:29 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4627a5a2e99a18293b7fb7a01c78997e434e8d64a438adff3e4514dd3020c6ef`  
		Last Modified: Mon, 16 Nov 2026 18:10:45 GMT  
		Size: 151.2 MB (151234178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:10bc485720fce71be9488030cc67c02bc9013e80c666c81829eac47f459976b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6091cfbc4f361f377a7189e5adbeff56d33e69c96d8e1ff27034a610e91cba3d`

```dockerfile
```

-	Layers:
	-	`sha256:58c07cb4a7a64853155152e61d188ed2b9629a27e24900047a025fc215e90817`  
		Last Modified: Mon, 16 Nov 2026 18:10:42 GMT  
		Size: 9.3 KB (9347 bytes)  
		MIME: application/vnd.in-toto+json
