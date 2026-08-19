## `azul-zulu:25-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:e120685131b3ea7375d60264fbfac45d8ad39e6903a8ee0d70e7996be0744faf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4e00fff77c8584b229a19359803718019c4cfc18e51e7844e19e8271025b9600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158381094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3945ac993d314ee97dc38b94c68dbc9880d52f28f40f07ab7f03cef911d7b1d3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:36:29 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:29 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:29 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa9928962c97e914ae6f6649bca3764da970ce10826bae0e028b78883c6e716`  
		Last Modified: Wed, 19 Aug 2026 17:36:43 GMT  
		Size: 89.8 MB (89818632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9f1204f288bcc78f79133b7af0ab865fee10375beee66d18d9f2488af6f01f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e60c386231f331e5477b0e45851fc8de7ba9435562a0660af618c09facede43`

```dockerfile
```

-	Layers:
	-	`sha256:5e3579f54bacff669e840144924ba4b37b96981cabdd565ecd7e097c4fe92fb9`  
		Last Modified: Wed, 19 Aug 2026 17:36:40 GMT  
		Size: 9.1 KB (9144 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:85b25653b2cd9a9182f648635d7cb310b8b559a37439f075cb4ded559830533f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156551753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86910a87ebdc8f962965d4177688e27bb0f47cc32d93e2e9ab20ecc4d41c627`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:36:42 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:42 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc7065c1f37af60d196fd050405995e79a59cd64af31d6af6e904894a2bd0ee`  
		Last Modified: Wed, 19 Aug 2026 17:36:56 GMT  
		Size: 89.4 MB (89409792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:03b2f9065a6f6f6f3510f71706133749bbc69786d51de69916b510e1f8f3f964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:259c9fac1d8ea866fcf7e90b53d367923578a8b81897ee4f7f58353b3e569783`

```dockerfile
```

-	Layers:
	-	`sha256:96968a2de227d96cb91de561d189819c5231ee4b97b7666084ba40708a8eb853`  
		Last Modified: Wed, 19 Aug 2026 17:36:54 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.in-toto+json
