## `azul-zulu:8-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:f6eba909ecb7ad4d65d5dce5beca1c8c79611954d3de2ebd3295e831c14e20ee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d4c816647616cf79578aa3399ff570b059588d6d51972b5cbd127c727fce6312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119218251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e982fe0d3a220cd56b9d654b782879a518b49096ed06b4852f109f252dcfbc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:28:01 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:01 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-8.0.502-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 23 Jul 2026 22:28:01 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23f08aaf2e39b2195a2f6e162408c4a05347dd1be555352cbe6d384dbf3aef7`  
		Last Modified: Thu, 23 Jul 2026 22:28:09 GMT  
		Size: 50.7 MB (50655789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f7728ea647ae8435d215ba62c6306cf3dc9caeaa6f1a857a031aa7d685c6aa72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9623d7800240cfac6ab4d291e13b61d7ff6635e00e776ef1bd96c04d6e94dea1`

```dockerfile
```

-	Layers:
	-	`sha256:4e98393088bc5d4fed978b81a71311ab8200fd937d758f4a64d5db57c4740ee3`  
		Last Modified: Thu, 23 Jul 2026 22:28:08 GMT  
		Size: 9.1 KB (9128 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:dba34843b677f4d4872386840879c54a13203079bd02ead6749c2bfbf1fc1610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118054126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:675a8fa71349905b33c6d8aece59b76741dcc1450eb5d4c7b7e6a4c1e33a1577`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:28:52 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:52 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-8.0.502-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 23 Jul 2026 22:28:52 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce843388ee0f7f9b9a786bf20be5b90afacfbea36615314ec47b1ab7f4bff7c`  
		Last Modified: Thu, 23 Jul 2026 22:29:01 GMT  
		Size: 50.9 MB (50912165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:24f1d023bf4ee31cdaf1cd658a9e3083716197ff0323ed7e80c60d59a98fc786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c054f5d1a71c934ea819b149495468c8e9ce812575e93e8013aad62c72c3d1f3`

```dockerfile
```

-	Layers:
	-	`sha256:c5e450767f93b8c42452a1fc38afe12928014bd202c5ced0c8f9d8851a2c7628`  
		Last Modified: Thu, 23 Jul 2026 22:28:59 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.in-toto+json
