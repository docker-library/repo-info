## `azul-zulu:11-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:182e7679615970e07e399406fe26df91517b4e1b2ee993d6b70ae20335b0dfd0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4253e2874a88164dfb359cdbb8d6f816a15ede05db72921dfec05ece0b6e0350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216286279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024de47500bb5ac2778ba4cbafda98b4f8a9fbed0d3ce289faaece84408a082c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:25 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:25 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 16 Nov 2026 22:09:25 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad3068a6d157a387373747da965ddbf542efc0ae2ed60ed31b02dd2edd48cb06`  
		Last Modified: Mon, 16 Nov 2026 22:09:39 GMT  
		Size: 146.9 MB (146915799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:22bcab5a59e1ba92c346cd0f59749bca5d641f58bcff070fef3c1d1ebcb8e82f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f95f0d2ad52b2e79b0e1606cfa067a874497b96f39fbf443d6b5ff74b069bf7`

```dockerfile
```

-	Layers:
	-	`sha256:c5bb82e4b502faa62d7922d07be60ddb65091c8c596eebc28896507fcb889876`  
		Last Modified: Mon, 16 Nov 2026 22:09:36 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:53ed65e1a02d40b2cc0c208721d7f99ef50c48d9fd767d1ecd22f94287f4ae05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.5 MB (214524735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d18a7f272b5fe06d5633d2adae5c9227911faefb9ab85b6017282feeb0c80c1`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:25 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:25 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 16 Nov 2026 22:09:25 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7315b9dcd784ac97e427b267180ec0de0d9e360bb66b7e7e70fa5ab68db64758`  
		Last Modified: Mon, 16 Nov 2026 22:09:41 GMT  
		Size: 146.6 MB (146574161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1cf1482bce7d683c084f99da0aef2d2df4575a20f69aba593efdd52203cf8403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8adab16ee03aceb70bfb76261c218ecbdc3643faa2621b89ab4ac7ff1bee3aff`

```dockerfile
```

-	Layers:
	-	`sha256:07a1beca6e7676b705872bb4534ab5cd11fbf9b5cfc1bec9e64d4f71ce045203`  
		Last Modified: Mon, 16 Nov 2026 22:09:38 GMT  
		Size: 9.3 KB (9331 bytes)  
		MIME: application/vnd.in-toto+json
