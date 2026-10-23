## `azul-zulu:11-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:90bdb5c222a6945b00508f1b62758968c1b5ed1ab0e7f3bb49f80c76c381fcb3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4622b22397499bdb2547671a78370c03b428137f9ff61271cb9afcfc3f0e051e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134736346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c72e2ffce86891b46ec9e710e3f0826a2e5be36d04ea01d724f5f7b2baef286`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:00:35 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:35 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:00:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:00:35 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d183b93f8f07b555e78c291a91d23be9eea0f902e3c856472913de9427b9fe`  
		Last Modified: Fri, 23 Oct 2026 20:00:46 GMT  
		Size: 65.9 MB (65856792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:975231fb1e766721f314ee83b2c020ab43694b460d8f4429d90a0efd9dad0696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19b2bd2af12e414782e0b7a2e8360959a94b337eb678318ea8f9732582806bfb`

```dockerfile
```

-	Layers:
	-	`sha256:ad3472237fda4f925cd14e497ab46adc92562d364eb6dc34d739d01db0a1fd52`  
		Last Modified: Fri, 23 Oct 2026 20:00:44 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1f81cc1977eaf942c63cd33b6455ef80a9ccd0a388778ec7a6c87831573efa7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133091450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b5a547a74c04b7df29efab515ae7f4faba1958fdc27e7a1dc9c925951124e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:19 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:19 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 02 Oct 2026 18:22:19 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a185447cb9aadc4391a9300504d98839b08d58cab102a096dedb622202cc5e8`  
		Last Modified: Fri, 02 Oct 2026 18:22:30 GMT  
		Size: 65.6 MB (65633266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:71a5b0a605bb1e76ae8243e40f5b22ffabafcb5e596614b6b84e4b404456d53e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1abb6f4bff9097dacdfbb5b652196d4dd2fe3d59f3938ee8ffaaa385dc5191d`

```dockerfile
```

-	Layers:
	-	`sha256:0636427dea8e3162e3259d5afbe91babbbf18d413e8bd1135eea02de36210ad7`  
		Last Modified: Fri, 02 Oct 2026 18:22:28 GMT  
		Size: 9.3 KB (9336 bytes)  
		MIME: application/vnd.in-toto+json
