## `clojure:tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:0cef0357374575328010f7bec59ff41083f4b080a23211531e5c725a068ce015
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1d5b17cb85a512e05515c61096be867320fa33c07953761449d3dc7c795dc46c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191452188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:894e0c75fbb0ae92fea47359be0e04824a4fc396a12cba109bb47681338c858e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:51:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:51:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:51:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:51:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:51:58 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:52:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:52:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:52:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:52:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:52:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015a22f6e356a2e75e85103b9f0e89ea56d98ea833e44c195e20dda6b1c5a0bb`  
		Last Modified: Tue, 27 Oct 2026 00:52:35 GMT  
		Size: 92.6 MB (92618058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bdc256a90042742007ce84cecf19c78872541effa08baefbb64a23d61d8e0d`  
		Last Modified: Tue, 27 Oct 2026 00:52:34 GMT  
		Size: 69.0 MB (68989506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36eca3a23081f43bc4138e60dfac400a4396f30ee3733dba0f8dd3d8b9794b59`  
		Last Modified: Tue, 27 Oct 2026 00:52:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c38ae49f10026f0dfd126dfade1dad1a5ed787488409cee3f7469e6db58528`  
		Last Modified: Tue, 27 Oct 2026 00:52:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bbbcea1a9b230241712eab43ca0b6e45f07f07219906ce5d0dcd2e30b06c2199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5246795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0775c41e86f897f0819b80da23686d1dbee8a7a6c85ebad2fce15cce77bf67`

```dockerfile
```

-	Layers:
	-	`sha256:fe500ba03921b03fabe12f2cbe1e7cc32db4a5f8a8ff96362b54e80af808d852`  
		Last Modified: Tue, 27 Oct 2026 00:52:32 GMT  
		Size: 5.2 MB (5230149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de8558828387462ed0ec17375cea0d8d960369b267481c5f04e1bf13aa06e31d`  
		Last Modified: Tue, 27 Oct 2026 00:52:31 GMT  
		Size: 16.6 KB (16646 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cbfc364247acb1297350f9f5e6ef1fd6b6936dc8fd23f42de223f2d5edd3c15d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190535593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9a22ab681282902e1372cb2a38b6ebb80e590aa56ef12c2b7dc3a1ce56351b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:52:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:52:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:52:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:52:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:52:09 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:52:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:52:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:52:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:52:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:52:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4643b26526e4dd0ad13d24b38e5b342255e18f6e045ef76c7dd62f8ac5b25268`  
		Last Modified: Tue, 27 Oct 2026 00:52:48 GMT  
		Size: 91.5 MB (91528871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4754549ac2dd6483123f9f59256bbb3c0af234a3dba1ec8cf4d99e9c7d3c96`  
		Last Modified: Tue, 27 Oct 2026 00:52:47 GMT  
		Size: 68.8 MB (68805199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2efd2b9e4830833c22dd075666a29e7b880eb4f6b4e98511075c44f3e4446d32`  
		Last Modified: Tue, 27 Oct 2026 00:52:44 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91f50f8017e81089ad60d577f05d008a2e3cb594b5a4042f3305f39ec4c51f6`  
		Last Modified: Tue, 27 Oct 2026 00:52:44 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:604d4e5d94167d88f5e7167dd3062277b4b5207aaf8f8bf985b1474a64a901c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:440ad7ac01e489515764c5948754c84632b61c3bcb999ddf79787b454beef297`

```dockerfile
```

-	Layers:
	-	`sha256:b7dc6484a55b826663ae4cc97246fe4762109a5e9b57c0dbaa3af612f3b80ac5`  
		Last Modified: Tue, 27 Oct 2026 00:52:45 GMT  
		Size: 5.2 MB (5235931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7d3c31728a0bbfffda0018b017bfcbd66bb94c76f783354b17c40aa07c46511`  
		Last Modified: Tue, 27 Oct 2026 00:52:44 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:971111ccd55757f76481566bf1b1103dda9d0cb97b7db784503e743db8427adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199327756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51823bcfa105578f9720726f8110cde15cdc39ad745caff27eb6622d1156e6a7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:53:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:53:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:53:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:53:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:53:50 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:02:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:02:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:02:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:02:26 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:02:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227201171100893aa91b5dd1cbb0d3cf94c48afcf99440d8d203aeef039f89f8`  
		Last Modified: Wed, 21 Oct 2026 10:59:02 GMT  
		Size: 91.3 MB (91256254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9b6a3e3afb5e1a59de436c5d5603afa9672f78cf906106841915fa077443a4`  
		Last Modified: Wed, 21 Oct 2026 11:03:08 GMT  
		Size: 74.4 MB (74418524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215ded75e50266430cdba03f0b2472473f29f403e609debf4d0db345f96cea71`  
		Last Modified: Wed, 21 Oct 2026 11:03:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:841c08de89eff472a828d3b053ba5486b6b92c380707504a159a4f0c00232eda`  
		Last Modified: Wed, 21 Oct 2026 11:03:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c1aa92c3fcf532991891eb2110531a11450f10af19543e9918a845f135e77546
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5234523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ef384de3d6c33de96b486c441371e7c7aec0079b569f09e2612a02ff7e63aa`

```dockerfile
```

-	Layers:
	-	`sha256:122c5f749ec86cd86145166fe31923ce10a036570b0205a346d5b2bb1acf8e14`  
		Last Modified: Wed, 21 Oct 2026 11:03:06 GMT  
		Size: 5.2 MB (5217816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8671f6efa517f1d33eff260053d0993b27f4d11c3fb0a8a02dff83cf13b2f18a`  
		Last Modified: Wed, 21 Oct 2026 11:03:06 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
