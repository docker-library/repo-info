## `azul-zulu:27-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:583b7a6acc16fb799b8da7e1c0e4bac3497f6ecab33af7b0e47f04daad79ffed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b5eeeddcb371bee464dfc8bff503355a3d2af7aed17252fd1d30d5f414a5b359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253394931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18379ec86761c4aa978b2cdde4490cd61448799b2a781e8a610a778b72a624d4`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:22 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:23:22 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:23:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-headless-27-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:23:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Fri, 02 Oct 2026 18:23:22 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:23:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f4012c55b0c4839c2a175e7fa29ef972f12ec370518d91816f776cb1bab818c`  
		Last Modified: Fri, 02 Oct 2026 18:23:41 GMT  
		Size: 184.5 MB (184515377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f8539c46613ad1fe1a9b057032ced700d3cc794d02e6761694cd4013597cb1a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9102198c38a7bea670cc2752b2e8aacf95a1c4cffc740ddcd6337daa2ebace06`

```dockerfile
```

-	Layers:
	-	`sha256:83bfd846305c86657f03187281d64a39187da8486c15fc98434196d1b0084753`  
		Last Modified: Fri, 02 Oct 2026 18:23:36 GMT  
		Size: 9.2 KB (9222 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f4ec598b466d0899fe54513a5c9575a932ea0e8bc8f1598fba7edc757fa98aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251634028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38124ac9bba72a35f06489ff8d36f6b367939233b3ccbb87ad93e3273582255`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:24:15 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:24:15 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:24:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-headless-27-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:24:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Fri, 02 Oct 2026 18:24:15 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:24:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb9d8bb79232453a7477ccc7cb8ccec507a60aeeff380e2cd62865cb29276d1`  
		Last Modified: Fri, 02 Oct 2026 18:24:35 GMT  
		Size: 184.2 MB (184175844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:48c2487e8cb719945d6d6029614dfda579faa7b335cb60afa8e51d2b69a59117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121b8d91d610ead7ce0449db03e3562191623e115d186c0477b51688780db4db`

```dockerfile
```

-	Layers:
	-	`sha256:c3ec95c5fcb88ff6224ab42a65bc86333b13d94714c7c0f3b9d74391b774c7b6`  
		Last Modified: Fri, 02 Oct 2026 18:24:31 GMT  
		Size: 9.3 KB (9316 bytes)  
		MIME: application/vnd.in-toto+json
