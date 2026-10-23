## `azul-zulu:17-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:49000400607a268b600ff50c35e37bc87061cb71b0c88cdab89f4ecf18a2cfa9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2b838b8dcb94c9ec9082922c1ed95f162da2f9ccf6ebad7239436fc11b6a7aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139726309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2351def554fe157bac931f945860d4499255fd3b7a2c55c7220cee79902647bd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:01:07 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:07 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:01:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:01:07 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12cf4d27ce328e7707c26704e4a2c86b5c60d8a080784425e4eb230e7672328`  
		Last Modified: Fri, 23 Oct 2026 20:01:18 GMT  
		Size: 70.8 MB (70846755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bca399f460785443b9eab381b3d01f52f88827b69ac4252872407e8af7a9bdf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:821f1c95824c35b9ad6ae01285d2844115d95a3c19bd6a670d67843ea162dd87`

```dockerfile
```

-	Layers:
	-	`sha256:5aca8e38c531eac67ee19e2df9310343e63c7326892c4f0436ffc0779946d93b`  
		Last Modified: Fri, 23 Oct 2026 20:01:16 GMT  
		Size: 9.1 KB (9141 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:683786984eef6867f78824d93c2c308def958ca5e824b73b2caa8f46848a7483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138362589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19f1467d6b282f36965c219f2e612957698d86fea0ce02cb9ceb5bf009223dd6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:03:04 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:04 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:03:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:03:04 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7ed727138f721323908285469751030e89e50e0e6d2220cce18bb1c4a4eebe`  
		Last Modified: Fri, 23 Oct 2026 20:03:16 GMT  
		Size: 70.9 MB (70904405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:829f6e9b0182c856cb1b65e835aff12069bfb2d7fcf1d4984fca599365be9d6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5e2556eced383c79b162a5584c0878e9d38bef75a00ecd1632601af54674bd`

```dockerfile
```

-	Layers:
	-	`sha256:286fb643a1586b33b3485c677efdb1be289859f20f5173f2e731ce00e71d7d56`  
		Last Modified: Fri, 23 Oct 2026 20:03:14 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json
