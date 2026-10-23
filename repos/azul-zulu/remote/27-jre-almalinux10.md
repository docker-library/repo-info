## `azul-zulu:27-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:63a4a99fdb749fddbecf69ff41971235bcd27aad9eed9b5a07e52833b50f62f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:560f16c17d687c61e4c79ec024f3a0d4f60d6bb91231072c76b60cb956b12761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.5 MB (159519455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5093fdd1403854bb29d8bc9b17b72dc05de53393980d55852ffa0d81694d3a7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:03:00 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:00 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-27.0.1-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:03:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Fri, 23 Oct 2026 20:03:00 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9eb9d04cedf76cbf52e1fd8b5b75535e654f0276d28c39aab49bc56835f3839`  
		Last Modified: Fri, 23 Oct 2026 20:03:13 GMT  
		Size: 90.6 MB (90639901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fc507d43db93363bbda5f830bd5f9aef672c0260361571968cf045300c90bd7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23a66ab42eb45457f17e1e02c71b73eb4e129660a79c12ba61dfb5a4839c669`

```dockerfile
```

-	Layers:
	-	`sha256:f6350be48b4f01255f9e64d184d0d314744ec7b1558461bb435da33c287f9e20`  
		Last Modified: Fri, 23 Oct 2026 20:03:11 GMT  
		Size: 9.1 KB (9138 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7507fbfa59e6deaa2ab5f76e542913e02430a7b1bd96eb2d34d739f9e4781ed0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158000431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aaac2ef440656d77b918f5849e7385e46e823221e43724adfaa72ce3d1dcc01`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:05:21 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:05:21 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:05:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-27.0.1-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:05:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Fri, 23 Oct 2026 20:05:21 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8105b92008890909c4051fc7778b4c04f75700832581257487b4c0786eb562e7`  
		Last Modified: Fri, 23 Oct 2026 20:05:35 GMT  
		Size: 90.5 MB (90542247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:60ed30174c572f25819787409b179bd4df19a8c896bdefa8acb2b0c0194bc8a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fef8db728a22c0af5a3e4fc08c2fcb22b76ca22923b06fde7ba9554cfbc6eb7a`

```dockerfile
```

-	Layers:
	-	`sha256:1d348602d12d4c583694a6af547e1240cd66ad09271958a8442d81498091fe4e`  
		Last Modified: Fri, 23 Oct 2026 20:05:33 GMT  
		Size: 9.2 KB (9230 bytes)  
		MIME: application/vnd.in-toto+json
