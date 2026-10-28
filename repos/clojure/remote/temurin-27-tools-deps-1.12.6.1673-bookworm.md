## `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:61f753374deaae35f3f3db6a909a01a0db75dc8fe6ee096a7b38baa1030243c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:78482bfeec05d60cede395b0bdd655a0e4a1af4bdfbfd8a90e8aa3a6a04ffdc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220142437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2663993c7a9956acc13b98335ac5c400316fdd089d5673b519f76a36de848b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:54:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:54:33 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:54:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:54:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:54:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:54:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:54:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f0b6b373c441d1693dceb02497a6e5544c64676486640563ba86d1148ec788`  
		Last Modified: Tue, 27 Oct 2026 00:55:08 GMT  
		Size: 93.6 MB (93622514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e114ef6ba11145a3d4648489db46f7b84ac382cebe70c62eb4b820432e3969c`  
		Last Modified: Tue, 27 Oct 2026 00:55:08 GMT  
		Size: 78.0 MB (77996798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914a32c3ab5804a538552f6d8ffe1ad1fad5061689359e26f1e916fcd6016153`  
		Last Modified: Tue, 27 Oct 2026 00:55:05 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed843a879243dace3fb2ffee49952a14c0d766f0a4d782b203883295f1f9f535`  
		Last Modified: Tue, 27 Oct 2026 00:55:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:84ea380e357a9138000fb6d24e6b5794a04c4a3ede5fd6193874e1199eb076fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7359486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d2e19bc6ef7f69c0fe0899cb2f208f6b3046a93ff697db7fb89bbfaa8f353f9`

```dockerfile
```

-	Layers:
	-	`sha256:286d1e697e4c6d9e81d510980fe2ccda3989128e61a65d970a2b22bf9f9bcc25`  
		Last Modified: Tue, 27 Oct 2026 00:55:05 GMT  
		Size: 7.3 MB (7342877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67142dc076b8b9f3246b210a45d4f44ca434584fe7363ea380d8017a4cc0d9f6`  
		Last Modified: Tue, 27 Oct 2026 00:55:05 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4aa54e0932852475d3a43135e963c5b619d507ab16a4633914e05e9c84e64ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219031872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f0d75963c2ef56d4f8984d8d88add006a39e12f19b1b884ecf974228be7050`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:24:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:24:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:24:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:24:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:24:08 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:24:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:24:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:24:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:24:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:24:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f354d8a41d3ca18034d57e364f2238566d5ae9a36e4816803d4a58ea7144bb`  
		Last Modified: Wed, 28 Oct 2026 02:24:45 GMT  
		Size: 92.6 MB (92633118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a056ae84246b7bf6765d6f7599a83d3b7883b3e44ece1b3389b80f16863cf39`  
		Last Modified: Wed, 28 Oct 2026 02:24:45 GMT  
		Size: 78.0 MB (77992540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776e22b30c541665a0a5c6f33ca60466a80f6e5537008bdb7d1f011b3e6dc2a2`  
		Last Modified: Wed, 28 Oct 2026 02:24:42 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea5e85c10a77a7d8875e8f99e6644984a9e9c713644590e34cf02c9e8db3f0b7`  
		Last Modified: Wed, 28 Oct 2026 02:24:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:12c9670da7133965f632263236c5bfb4191e7ab38513c3259685e6268e56888f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1833211c3833fd60907c4d6833cab3b01b0b786889750784380e89e72929f93`

```dockerfile
```

-	Layers:
	-	`sha256:56353397ee83726de4cc4ec5be46ae9e4b6307b13b5ee73d468b4ca86d694b5f`  
		Last Modified: Wed, 28 Oct 2026 02:24:43 GMT  
		Size: 7.3 MB (7348661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acfb0d39ab85e438cdb970a4fca7700e31d6b01b6f7254645dab9b0cc5c84322`  
		Last Modified: Wed, 28 Oct 2026 02:24:42 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:7ba9385afb908310d64e2bd55bb9186d0d530c70efc5e6ce644b04f40380b6c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.5 MB (228458106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a750d7a50446f76457a341d2f31dd054c2ee76338920e947ee88a0842e8e6632`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:15:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:15:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:15:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:15:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:15:07 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:25:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:25:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:25:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:25:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:25:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3bccd29f995b79b7862ff4967223c110516dd07fb12dca0006b4c37d7dba6d`  
		Last Modified: Wed, 21 Oct 2026 11:19:45 GMT  
		Size: 92.3 MB (92255808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391cb20e39d202e876a2462f373fa0f46d6d9461e2d57bb6a63f8218066e3d41`  
		Last Modified: Wed, 21 Oct 2026 11:26:10 GMT  
		Size: 83.8 MB (83836510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9972355aeb0d4a26e5e53b2e6d0071069cb926f7ef991f050a4f062062eaeb`  
		Last Modified: Wed, 21 Oct 2026 11:26:08 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fde56b9b66bcb598366d46c53958005a41b6a83d12a1c3d81d89ddba202cc3d`  
		Last Modified: Wed, 21 Oct 2026 11:26:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a39578d37c94155ec38863b6c80f315460716506329fcaa53396acf23b115c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7349484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2bbb008197be66883916471dcfab9b158a548b3fba006747589b3b5a58e857`

```dockerfile
```

-	Layers:
	-	`sha256:0087466d2dfcdccd8e204792f1ed7d0d5d3599f0b88416ad345d9116569b1455`  
		Last Modified: Wed, 21 Oct 2026 11:26:08 GMT  
		Size: 7.3 MB (7332815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43c067167e2de66bb99ad76c6cbbc0ea89ca6296a6df74bc683743730a5eb51c`  
		Last Modified: Wed, 21 Oct 2026 11:26:08 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
