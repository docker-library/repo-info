## `azul-zulu:26-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:b2a45ac0744d3765705cfbc9bf4c72388f2f626de55dd9b6f5ee68bf9635be08
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:15a85829755adf10b75fcf28b45e83536b448279b08b5b7e451a4a72986e03cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (161030037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaae629d26dbbd3bdedafa79fd803fe98891e4d11677abfefb488ef537571735`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:28:15 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:28:15 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:28:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:28:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 27 Oct 2026 17:28:15 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc038cf8d8412f8160520423fa943b7925952aeed792b37e542926f68f22d43`  
		Last Modified: Tue, 27 Oct 2026 17:28:29 GMT  
		Size: 91.9 MB (91930762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5b268be77902f1a13ea8b9b22a157efafbc286b397055f0ce1f3284efecb80fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b0eb6a5aef706080ab3febd4ee2663a66f9a32791a3e5c1a1387c165b965b4`

```dockerfile
```

-	Layers:
	-	`sha256:f623340ca6cc0fa5b0852f1bb0d8f4b915ee5939b5e2c33b1452402635d0dec9`  
		Last Modified: Tue, 27 Oct 2026 17:28:26 GMT  
		Size: 9.1 KB (9144 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9280f1f46482008fbae9b22f090f648a856974b7b789731f1aa3d971d1a07b52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.5 MB (159516671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2fa7d0bfc4f7a767ddda52062cacfdf6d453dabe3c6bffc3f712d208080b860`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:24:01 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:24:01 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:24:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:24:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 27 Oct 2026 17:24:01 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1930ae411e0f037cd3f70954850531ed5652e04660254f396abecd9ddc6ef911`  
		Last Modified: Tue, 27 Oct 2026 17:24:16 GMT  
		Size: 91.9 MB (91850160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ebf6b5167a926552fe14b624d03c9a2e79fad9f47956228c42244f93ebe0f280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979ffea61745573f675354716f448410fd17619b4e8d45c3ee108e316bd02ba5`

```dockerfile
```

-	Layers:
	-	`sha256:763c8a6c07fd2cc13f2660f69626e1448e5115e27ab598fa305ca612bc6d427d`  
		Last Modified: Tue, 27 Oct 2026 17:24:13 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.in-toto+json
