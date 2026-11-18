## `azul-zulu:17-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:26754a3a8823f00c9d92aea4a1d59d941c274c6812d4b8cf65d4f8101b7d8945
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:eed1cf2923335c73804bf42566fa352271f130e45464c2f679bae235299194a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.6 MB (140621449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c51a42e7722d3453171152c244db49746d072f7d73534926bf1f8b1d3ef0e450`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:41:45 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:45 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.21.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:41:45 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e554282da3c042650ec39edf776208a37f9ff6d7414d6c33e9a8c7da4a339a43`  
		Last Modified: Wed, 18 Nov 2026 02:41:57 GMT  
		Size: 71.3 MB (71250969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5963602965e64118a4c05eefa36dd5d2e6029146585732b83dd07b0bef7ab5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824af4a854e0e4bdc2910e33acc9bd4708503e71b08a14c709f095fda5a2567d`

```dockerfile
```

-	Layers:
	-	`sha256:929c9bfe74889fea0ca1b54d05929f05643cdace7efe9ed2fcc26516b4994beb`  
		Last Modified: Wed, 18 Nov 2026 02:41:55 GMT  
		Size: 9.2 KB (9151 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fc1498d120faf22b23af42a0925c95c1b901470073f32853961402bb2d6e6b1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139253017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b09740f927bc68b91c98d3b8a5e969ac91694ebd169de3b4498184dde5ce5691`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:41:37 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:37 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.21.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:41:37 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44a3f5d096f090ba5e4dcd3085fe98f9d4d4724bad8273bb663f7eb7355b5a5`  
		Last Modified: Wed, 18 Nov 2026 02:41:49 GMT  
		Size: 71.3 MB (71302443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5bd44768ca11eea2e2e425ae416699ac2e465b1f577c09957d6f8aeb4688554e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca544207eee1cc8ed34a71eeae5842295ceaea1deb04550b99c2ad56e4a82ffb`

```dockerfile
```

-	Layers:
	-	`sha256:8f5808426f64ab9c5ba33dd2d2cea449686a31e331d1e175adc81ae1246885f8`  
		Last Modified: Wed, 18 Nov 2026 02:41:47 GMT  
		Size: 9.2 KB (9243 bytes)  
		MIME: application/vnd.in-toto+json
