## `azul-zulu:26-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:791e4d6871e8e27b603cdc4e1048bc9552c584b6022b6d640ee6aa49911dd1ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c81c9deb6a64b55e5e9ea73631a56a5f0a53a77f430c035a02402ba2b85735e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160602402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f03050036a2f00c5279bc804da44070ad72ac279e942ecdb33884657d38fb72`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:07 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:23:07 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:23:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:23:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Fri, 02 Oct 2026 18:23:07 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7d1e470697b73de1aff0d95b550d177c96f2b9d29d14f76cdc2439b2f04949`  
		Last Modified: Fri, 02 Oct 2026 18:23:21 GMT  
		Size: 91.7 MB (91722848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1cb8d226ba27d9ddfda7ed4b566346408424ada78d6b2db3c19fa3d979418094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5acbd4aca72468985d7a3a7584e7c230798848bc290bde0a82159927f7f939b`

```dockerfile
```

-	Layers:
	-	`sha256:77f954c730e9fd192d8d4ba6fb580c771c56281acd638635c968513c03db9527`  
		Last Modified: Fri, 02 Oct 2026 18:23:19 GMT  
		Size: 9.1 KB (9144 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:18f590f27b3f5689df1009f8090ac557a0321a02b0b3a98960e76b65892546b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159106944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edaac4772f4419216872cabf43a993dcda3a799964b8a829a8486d6badf2d67c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:44 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:23:44 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:23:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:23:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Fri, 02 Oct 2026 18:23:44 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6ec419db907611395e6df1f5494fe88fe7f0034fec4279a56d6f70cf1b45d7`  
		Last Modified: Fri, 02 Oct 2026 18:23:58 GMT  
		Size: 91.6 MB (91648760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ae20df6ac2417c73b4327c0baad0fbb7d87c03ec7cdb3cd8fc2afad99aac8c9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa753be8984a5a90d90d90743fdebf5787d85de29449dcaee550793fc79efe1a`

```dockerfile
```

-	Layers:
	-	`sha256:6bdf0c94cbc14a4b766ea655ad9de3fc06ddfc88eff10d594c49b0320b1397ec`  
		Last Modified: Fri, 02 Oct 2026 18:23:56 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.in-toto+json
