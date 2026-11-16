## `azul-zulu:17-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:c6351bdf40d7896a6d57bf96edf37e03eb3f6591e54b311b1ca66859fc597028
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e1d3bf00ab18a14e395fbe5cc33710e18100f841dfdfbc5b7a80c0725964140d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140190673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3562ece10001ca09a1d5e2a81d01d47fcee1acdb5b6cbb081397bea58b13f1f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:41 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:41 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 18:10:41 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d622d00c994925c21b9e9e07baad0b49c7bf8f0293cb3f82e6346e70fadcd48`  
		Last Modified: Mon, 16 Nov 2026 18:10:52 GMT  
		Size: 71.1 MB (71064894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ee7293f740561dbfffb76c4c9b14a870a82447c652fc7a03236b02aa72f74da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654a74e92f7775de11f09e0b8b67179542accd014ccfd421b0fa2903e16a41fa`

```dockerfile
```

-	Layers:
	-	`sha256:ac4c888e683fed9c5b6bf4a9b315c8963e11e4b9a956a4ac0edf121bd20baeca`  
		Last Modified: Mon, 16 Nov 2026 18:10:50 GMT  
		Size: 9.2 KB (9157 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:55bfffa0d8a60fda2a385aa054ed81274e32e5d25b652f6c24b833aa740df439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.8 MB (138822087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6723d989f04f8ff9365227ad94a537f244c1aa5037e7e992d547c9aa82652eb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:25 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:25 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 18:10:25 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582ad4efe17e096b325c1eb95625302bdd22527845a6645588be3ad93cde06b1`  
		Last Modified: Mon, 16 Nov 2026 18:10:37 GMT  
		Size: 71.1 MB (71124271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:50b3e77843991f125c04cd6acf4719a6ed0d4c77611c2585d70fa226daac3dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e7e4aaff5fd1ae8f3b80980ae72c3edf03b00717aaafdbb29ff212efd16082`

```dockerfile
```

-	Layers:
	-	`sha256:f61f5bf48dbbb3439d191cff356c23bb50a9d663cc61b41e4e34aea4d4d39b79`  
		Last Modified: Mon, 16 Nov 2026 18:10:35 GMT  
		Size: 9.2 KB (9249 bytes)  
		MIME: application/vnd.in-toto+json
