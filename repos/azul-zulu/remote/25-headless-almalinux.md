## `azul-zulu:25-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:80439f3e012b59842dbf528dc60d093bd1a9e2901bf33b547bc8a5fcc57f08c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c7ab617222d7074105be20ddb92b3ed10515fac2c9c7dbcf4e43af8e5fc6feb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (252041010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7083f6a9ade7b837ea8eabb7d34c2909521a39711aec995372266a63fdba3c85`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:02:22 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:22 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.5-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:02:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:02:22 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:02:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27ff160299ff2ecd11e191dd0ff0ef71ec8613a61fd82738b0e8e4df4fc3c7f`  
		Last Modified: Fri, 23 Oct 2026 20:02:40 GMT  
		Size: 183.2 MB (183161456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f1bc7e87ed14a3f0373e189a58980d7b59472d88180024b695fcd810b7375873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff04bf5a05fd1b25832af2df9508c7291e5404901a9ff6c9763e905be0cac3c`

```dockerfile
```

-	Layers:
	-	`sha256:8f10246c459e5276c7afb0ef8cf45af1cfdf08dcfed77f5f765bb9d471d170e1`  
		Last Modified: Fri, 23 Oct 2026 20:02:36 GMT  
		Size: 9.2 KB (9232 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:678a7829425bdb2a1aafee4e9b3a12b6e101c77f3c0e6e55b813ba9f2eb6b96e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249738346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98488814df44a9635eba7a467c312636110237afdb57560ddf526a56627cd3ff`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:04:32 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:04:32 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:04:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.5-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:04:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:04:32 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:04:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c39c134cd2bea38f35a0264d75f46843a37274208eec31b6e6801b4550192b`  
		Last Modified: Fri, 23 Oct 2026 20:04:52 GMT  
		Size: 182.3 MB (182280162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e856f4898abda57c316b596b518d9ce90da55c3aed0d7815777241eb17386e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787787ac71331ce1ca9580850a196e3e15ed2fcb7eeaa1e0145a93c544b27e5a`

```dockerfile
```

-	Layers:
	-	`sha256:85767544e1c866b130e8a4028315fc1bb15bde9e46bbd0ddd5d476dd197ac4c9`  
		Last Modified: Fri, 23 Oct 2026 20:04:48 GMT  
		Size: 9.3 KB (9324 bytes)  
		MIME: application/vnd.in-toto+json
