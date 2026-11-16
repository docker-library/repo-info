## `azul-zulu:21-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:b9cde300447cf95e33daf8606d2deec761dd26707cc21a329f752763bd20be48
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5769d6b548f618412e12e2221bd8a0db81bf5aaa125f123d14dd94ceb245a2ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.7 MB (233655303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:976b5cbab7926229d9476f4a4e39628e77ecf9920637e752e9983f8b3763f811`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:50 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:50 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-headless-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Mon, 16 Nov 2026 18:10:50 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50bf2d9e49bc044148b333e8b7093d549c13b3b7d63f644f088c614b204a45b`  
		Last Modified: Mon, 16 Nov 2026 18:11:06 GMT  
		Size: 164.5 MB (164529524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c67a776809b9483de07bcb7fd6e73f9f5704171018816af02f71abd5738d81e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df652d8a8adc3bced2137a4a842efdca8a5951e626291defdd55a8d43ddbfc12`

```dockerfile
```

-	Layers:
	-	`sha256:1caade56de82b07bd9aa25ee29ff199999b15a414c7287efac1279c6e6b3a729`  
		Last Modified: Mon, 16 Nov 2026 18:11:02 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2d3b896370172a40bd2bdfe06a55bba8879022ea4ab1703ee378da97f13b9e6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231533973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52918a83b4a21ccd231b258fd8ca17dc6a8f4ed1f7c1eafa6bd950f7cb602d00`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:41 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:41 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-headless-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Mon, 16 Nov 2026 18:10:41 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d68c4879e6e7c76255f877a82dc20136fe41385fe4c35d5b7301de75c88dfd`  
		Last Modified: Mon, 16 Nov 2026 18:10:58 GMT  
		Size: 163.8 MB (163836157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:930474e523e2edcdae52e225466bcb1f1cc80870b9b6f016840e37cd63ffb619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7af6551605d1fcad0a28b233b9ab54b2377bffa8f983c139c675ecfcc74197`

```dockerfile
```

-	Layers:
	-	`sha256:2849fc6d3d8d318674f2c7f61008afa1299d612240b9d4d36c4adac9adf75693`  
		Last Modified: Mon, 16 Nov 2026 18:10:55 GMT  
		Size: 9.3 KB (9346 bytes)  
		MIME: application/vnd.in-toto+json
