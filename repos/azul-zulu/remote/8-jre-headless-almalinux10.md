## `azul-zulu:8-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:29dc09738cbb74db058e422e3bc9ea6f756a4fe15ccd56e795146f5793136366
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:dbefe5b3e4d5bad5e1976e43d3126ea28f6a3943ced97d96b966f9823558e958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118127826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:912d3d846a919c3c0e51c08ad02636df2b72cdc71dba47a125d089de2df6f097`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:08 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:08 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 16 Nov 2026 22:09:08 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54462cfbe803c7c84596e63dcc257647f2e9036eaac6dd9976cc43c7126d7fc5`  
		Last Modified: Mon, 16 Nov 2026 22:09:17 GMT  
		Size: 48.8 MB (48757346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3a5a81967bb336e8c05b4972878740deff1bdf59ee2fe085558b7a7e9cae159d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d943f1b4ec75d348b0bd9d2077c357eef791d5ded0f0941c666040dfaae0e207`

```dockerfile
```

-	Layers:
	-	`sha256:e004a085de429ac21407e463715102e043459891d701e60758937eff5936b514`  
		Last Modified: Mon, 16 Nov 2026 22:09:16 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a3af7760b7c24865a26fd09f39039942d6d4b164355afd751d7027d6eccb2c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116929116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470f35838daf19c04af2be14d5e6c0a3c82c7c5a81ef4c6444e920c18dad51e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:08:47 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:08:47 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:08:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:08:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 16 Nov 2026 22:08:47 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f736e30f556012c97b92ff4c00d16bfffd5b888306d2a038fede5d366420ab`  
		Last Modified: Mon, 16 Nov 2026 22:08:56 GMT  
		Size: 49.0 MB (48978542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:63b5942d793f74a0365f37a636f0385f7cf872be7cdb7f7be490ff5bea313a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe9fc074840cab93634d8fbc46f7c71a6c15d58e46ef5b7aa0b6cc185c6e47f`

```dockerfile
```

-	Layers:
	-	`sha256:0a426300645786004ef8fc7d4d67e22bb21eab3ce405743b0e1ce4ff5c24457b`  
		Last Modified: Mon, 16 Nov 2026 22:08:54 GMT  
		Size: 9.3 KB (9313 bytes)  
		MIME: application/vnd.in-toto+json
