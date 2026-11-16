## `azul-zulu:27-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:66c6e6b73329a0d8a038178483bbcf25b895b9e525c4e2250f1cee0c728bc342
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b44596356f7cdd797542947aaa18a4a0691cf265f874ff728342b3b82b71d31d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.0 MB (159987396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1929f04fef63d6d6df5a59e51cf48d24fc460c7105a3bf568f660dd1a66fd861`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:38 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:38 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 18:11:38 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f7384cddd5b44bf6b5bfdab6ae0aab7d37a19158a24b1ed231ba6a38abfbe5b`  
		Last Modified: Mon, 16 Nov 2026 18:11:52 GMT  
		Size: 90.9 MB (90861617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b106bdef548183c16e0f05ab945407266e2beacd7eb7b26251d5222afe30a6cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764d4afc81233f909f44eec4b0b752918fc43443f05ff08e31d084b4f5d94646`

```dockerfile
```

-	Layers:
	-	`sha256:c9efce53879790fc40ce665b8924b9bc181a1525a4deeede2158780c574c9f12`  
		Last Modified: Mon, 16 Nov 2026 18:11:50 GMT  
		Size: 9.2 KB (9154 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:26b7aa713457af5950df942fbfcc0553723d35050476726235fec545b623d519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158457187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50f24b972bd01789da956a03cb63b4744ac22275579960889b86cbee7d377a3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:28 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:28 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 18:11:28 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa5a1aa636238db644973b81f46abff5f22001704c9af4253802fa85f5fb5426`  
		Last Modified: Mon, 16 Nov 2026 18:11:42 GMT  
		Size: 90.8 MB (90759371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0e5ed45e9f6db605a0584a78de9256c0d2bada900713c4c682fd5737692e786f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a8c5d8f9541420fa32fe9fbec213bc16c4f15fe423e09328adb088aa5eb0cc7`

```dockerfile
```

-	Layers:
	-	`sha256:a00dec98a121af04b3153f13369697eb1566d53ff98fef18b699991924aec34c`  
		Last Modified: Mon, 16 Nov 2026 18:11:40 GMT  
		Size: 9.2 KB (9246 bytes)  
		MIME: application/vnd.in-toto+json
