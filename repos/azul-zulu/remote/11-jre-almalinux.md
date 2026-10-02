## `azul-zulu:11-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:8e6afb5567238c0360a9c21e4160b02f20bc5d7e08dfe43a9107f199daf5a075
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:285abc9fa8855e4aca98f5e556b05a76ee059513f157d77b552be38f409aba27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135128402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85433f8b3c8a84e1a821b85bee4db72dc6759b1069cb16aae719ddc015ee59ff`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:25 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:25 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 02 Oct 2026 18:22:25 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d3cbb93a808cb91cc8bf003a119e20a9b1df0371b64f044e21788e4144dd2b`  
		Last Modified: Fri, 02 Oct 2026 18:22:36 GMT  
		Size: 66.2 MB (66248848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:24d7122c6c3e2bc298c08a7d3f42d3f40e09d63c1ae3f080a1123a4458d5bb3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55cf91f439e363577ef8fcd82ba2edfff9232aa41a50aa4c4aed9d3653f25441`

```dockerfile
```

-	Layers:
	-	`sha256:ea9e7ec96f650e6f81aa10b306a67bd699b1b0bfb813d448f8b57136de300208`  
		Last Modified: Fri, 02 Oct 2026 18:22:34 GMT  
		Size: 9.2 KB (9151 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:67683b54c4063176c53b0db5ab9f176f3f22e49964043ccc608da4c4a3037f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133518750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1b3487883c5d9328e9be047e37552d6ef14fe6fca72b6187a13829341d815c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:17 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:17 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 02 Oct 2026 18:22:17 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3286668b5c9ed083e8a8a50472be6796dc4a4783e0acd52acf3d03cf621dd801`  
		Last Modified: Fri, 02 Oct 2026 18:22:28 GMT  
		Size: 66.1 MB (66060566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:944e0ad10cab40d5ec6636dbe89e39491a1fc8767764135e734c5ebe960b6f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9d68e1aeccb3c99e14d208276fb133b9bd8fbacffe02ee79657fd30eb6858d`

```dockerfile
```

-	Layers:
	-	`sha256:5e52ff103b605b8a6383d504a8fd5ac1b138ddfdf6445f3c5148b4ee6108564d`  
		Last Modified: Fri, 02 Oct 2026 18:22:26 GMT  
		Size: 9.2 KB (9243 bytes)  
		MIME: application/vnd.in-toto+json
