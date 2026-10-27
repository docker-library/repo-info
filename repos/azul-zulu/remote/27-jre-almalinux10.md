## `azul-zulu:27-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:09f1f2bd8b0c6b4ec29edd0c42c9c4cf0e0a753188cf37c7bcfb132e5758ac17
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a8a8936a95c3d1f3b38c9b40bfa6b19ff9a5a5e1aa5ff00402115cb012fdc211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159940858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e5c58b537e826cd994b4143233302dfa36a28113794a0c810c4a4d33a0e986`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:28:24 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:28:24 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:28:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-27.0.1-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:28:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 27 Oct 2026 17:28:24 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e09b46c0e4995936189544771254d00899d661776c33c554f68fc59214feed1`  
		Last Modified: Tue, 27 Oct 2026 17:28:36 GMT  
		Size: 90.8 MB (90841583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:61122aff22f7e000d32ab7de1809583f1a161bc660e8556d8862928c9486ddfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dae5e501a06ecb777d3446aa57cd20e2508d005c5be84c0ca0646c2340968eb`

```dockerfile
```

-	Layers:
	-	`sha256:be4ff7b7f8d3e56f374366be1a701290a0580ef3cae8850b2e15cb9dc15fab4c`  
		Last Modified: Tue, 27 Oct 2026 17:28:34 GMT  
		Size: 9.1 KB (9138 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:69482e959295118e2980d5dfd72ed8ae56f8754a8dd654547828cec6104c7b08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158407305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:295e0bbda754d0b509e5562aa4c04c422e1cfaf10ef86770e1b64853e7cd9912`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:24:27 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:24:27 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:24:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-27.0.1-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:24:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 27 Oct 2026 17:24:27 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f9206178d371b1fa2b111038c72bcd86bf531354c2c6a0e38d69a77fc62e5b`  
		Last Modified: Tue, 27 Oct 2026 17:24:41 GMT  
		Size: 90.7 MB (90740794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ecc74fe470f392290508caa3bcd4d8d6cc9614b910394ffa7f2b51dee7bb12e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef80efc7550c9a4ec87cf3d23afc23f503a255b7df8151bdc9e40e7cd45315a`

```dockerfile
```

-	Layers:
	-	`sha256:85e03c4d2895a7b967e931fa78cb019787c6b3737a5af44eb02da57952409aec`  
		Last Modified: Tue, 27 Oct 2026 17:24:38 GMT  
		Size: 9.2 KB (9230 bytes)  
		MIME: application/vnd.in-toto+json
