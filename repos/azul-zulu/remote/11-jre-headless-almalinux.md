## `azul-zulu:11-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:b3fbd0b63eb2f48a6b2a7579788a7c7169df8e83a5df5515295795c0567f6cdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-almalinux` - linux; amd64

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

### `azul-zulu:11-jre-headless-almalinux` - unknown; unknown

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

### `azul-zulu:11-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:080a897ce6c5099f8497e6beb72f4345671100c1ab50af4fb94d485d9492665f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133141550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cb0abb4ed62dc7da8900378f33931db976cc19e137814efbd2e1f542b81b07`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:01:17 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:17 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:01:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:01:17 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9911f062e15e45db31a375b3ecb744d62caf2dffe769c92e026ae99339f8b04c`  
		Last Modified: Fri, 23 Oct 2026 20:01:28 GMT  
		Size: 65.7 MB (65683366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4829c79c315c79245f5b34e171e985122f96b698d6041f8a911202c85c2a75cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7bfa181ea821aa485c56f16ad38fa6c90ef6b9b594dfbb7a868f2f9ee5d301`

```dockerfile
```

-	Layers:
	-	`sha256:1dc7dcb55cd619be1f3120cbef52c838af82bc4b27700223c832dd40ef81ab7e`  
		Last Modified: Fri, 23 Oct 2026 20:01:26 GMT  
		Size: 9.3 KB (9326 bytes)  
		MIME: application/vnd.in-toto+json
