## `clojure:temurin-27-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:80514a40eaf04b3dc05081320f141d90078a5e02a1f9b772f55a12841f8c8f21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-bookworm` - linux; amd64

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

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

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

### `clojure:temurin-27-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5be6bc255413f0bcbf8766211df1ec68846e4ea65e7b2d2c130cb64043de344d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219029973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1b8f797a7f517c2d036322b5f90feada80f772cb682a307861f135075eb771`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:54:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:54:26 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:54:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:54:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:54:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:54:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:54:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ffbf2cf1903c59b4159032269c955ab6d68ce313b45e86f7c41681240192f64`  
		Last Modified: Tue, 27 Oct 2026 00:55:04 GMT  
		Size: 92.6 MB (92633084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6954f0b01107e224360bf1a95535e501460257b29ab43f7b35a75d83fd97cd2e`  
		Last Modified: Tue, 27 Oct 2026 00:55:04 GMT  
		Size: 78.0 MB (77992732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5cc0885c262a02dcfb1565e0d7c0044ee3353f691c671c535f3f2aceb095f69`  
		Last Modified: Tue, 27 Oct 2026 00:55:01 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca81fa99acff313f16433b55c142ee357298d43859f76f596adf603f6432bde`  
		Last Modified: Tue, 27 Oct 2026 00:55:01 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:dc8831515939183ad4f75ee6abf3d72114ebb8b33b174df8ed468be36a553e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e4140799519386f04e0acfc2377b1e03f51eb2b0527ac966760a036caae1a0f`

```dockerfile
```

-	Layers:
	-	`sha256:481f73cf1217e1635785860494992dba31fae4aacbdaa5f75386b6506b9b04c0`  
		Last Modified: Tue, 27 Oct 2026 00:55:01 GMT  
		Size: 7.3 MB (7348661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32a4916a2d11139d6d3c688626a8fbe7bed762f9a33c0c2fb95dae9b03f94d52`  
		Last Modified: Tue, 27 Oct 2026 00:55:01 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm` - linux; ppc64le

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

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

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
