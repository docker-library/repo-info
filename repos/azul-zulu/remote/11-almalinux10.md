## `azul-zulu:11-almalinux10`

```console
$ docker pull azul-zulu@sha256:4cb5f667c7504bb422c3d8087c46931a622b6aca9763f63b951c3aed6bcb3162
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:862dc6ec56962ff61d6536f698fbcd8fea0a6630532e3fd4a835f5197ad05d34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216702094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9caa9e3a8ca1d5e831506692c2c13e8c1bd56af5d4b992aee0132f0041cec5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:28 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:28 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 16 Nov 2026 18:10:28 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e911574c2c791261a88682b613644ed512475e3f004027dab74ca280f7cfa978`  
		Last Modified: Mon, 16 Nov 2026 18:10:42 GMT  
		Size: 147.6 MB (147576315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f8c8282ab6a6b4b16a54eb50ac0af5c259cba4254c66f67a15098d41205676e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9784bb9b984b9391c8c50eef4c880636235d6bf9776d8b162f071b110048328`

```dockerfile
```

-	Layers:
	-	`sha256:1c0a55238fa32eb5cc43f106229d2b4a51d3de8c7518ac0f7ce0a077a2a65275`  
		Last Modified: Mon, 16 Nov 2026 18:10:38 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:856b8167c5a1104af602cd2ebf796f5871e7d2937424733ba8ee9c19407f2113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (214959887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2fa580db21236ae1157a06921decbcdcd8a459c7fcdb36597e78a0d47085d35`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:22 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:22 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 16 Nov 2026 18:10:22 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6891ee1e4904acab00a4e5653674ae6f25de30a69a9615aac351b57243954f59`  
		Last Modified: Mon, 16 Nov 2026 18:10:37 GMT  
		Size: 147.3 MB (147262071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6cc19ef838b65d89449faae51694697c4b998b2bb8e449a4f1dc8c19b9014d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6accb72c90756a1f9edbdd67709670a1ee008a3e09728aeb1ed349583a6b7999`

```dockerfile
```

-	Layers:
	-	`sha256:3bb7e4c955d7612d62326f8191df8890a59b8fbec3103d87be00763409d332d5`  
		Last Modified: Mon, 16 Nov 2026 18:10:34 GMT  
		Size: 9.6 KB (9586 bytes)  
		MIME: application/vnd.in-toto+json
