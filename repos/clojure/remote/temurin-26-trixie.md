## `clojure:temurin-26-trixie`

```console
$ docker pull clojure@sha256:7173f2608a5654af4e1d82354be6abb20c24db3237c62ccf83a7d99f06a08e85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:cda089fb97540a03abd3917e7946f684da429130251ecb223dd3c3cef442030a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.0 MB (229973268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:613df538a0e77fe77b138c1c6dad3022692ce34fda78d46cfe18b122d251012e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:51:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:51:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:51:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:51:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:51:53 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:52:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:52:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:52:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:52:08 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:52:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79828a32ce912ba75ff9d85307fae5b87427c2e862fd739f6a7a8658a36b64a`  
		Last Modified: Wed, 09 Sep 2026 03:52:31 GMT  
		Size: 94.6 MB (94563742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35378888e64cd146ad620ea891f276d68ff8bcb5be2404aa2ab36d159c0e5ebf`  
		Last Modified: Wed, 09 Sep 2026 03:52:31 GMT  
		Size: 86.1 MB (86070658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104b60a51a9d83feaeaf958dfcad11863499e443e0e936e42c90b0da51b577fe`  
		Last Modified: Wed, 09 Sep 2026 03:52:27 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd51c62f9c1a306dc92017a4eb2656574b39d8283c2bb1b9f08b33d0a898e015`  
		Last Modified: Wed, 09 Sep 2026 03:52:27 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2bc6cdbd0f5638568f753e1fa5724ef55ac77b6d67dcb5f650c8f433c9352ce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7454665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab111add2b01fc79e5e643f4b937b459fa5e340ee6bdec427fadf04f32a1eb2c`

```dockerfile
```

-	Layers:
	-	`sha256:0e6010ea1b3f49b0c6cf9c779ab52d51cab153038fdc91277d9ed05d8ff14c03`  
		Last Modified: Wed, 09 Sep 2026 03:52:27 GMT  
		Size: 7.4 MB (7438764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:197507841087d6af524eec107649065f96f3400e2dab86d6da56e651bd2c7227`  
		Last Modified: Wed, 09 Sep 2026 03:52:27 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6b72caa316f41814f07e1393a1e10ea5a2b745789f9197a21094fd33ccb26db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229515162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08567d43919c3ea2e20a8d91854fee850cba4f4dfe21d8d4b9e0fa6de269d7cd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 04:04:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:04:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:04:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:04:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 04:04:17 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:04:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 04:04:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 04:04:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:04:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:04:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8d1918a286b15b6cf6c98025c8c7ef44d0ac7600d1c864658d8dacaf364416`  
		Last Modified: Wed, 09 Sep 2026 04:04:59 GMT  
		Size: 93.5 MB (93541594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37b7f0c06cfdff0de5050976ff77a52aeaf5847f9283455d5764a7d5eb5d5cd`  
		Last Modified: Wed, 09 Sep 2026 04:04:59 GMT  
		Size: 86.3 MB (86267669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fc868098b3bccd52cfc26e6244a4cede7622bdbed1388506f52dc173ea3279`  
		Last Modified: Wed, 09 Sep 2026 04:04:54 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf530394cc60fb65eb6db14e0dff24beabd8b5727fb8d2bcc858468d9caf793d`  
		Last Modified: Wed, 09 Sep 2026 04:04:54 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9fd512acad3caf94eee6f4b965ad9f6e16017d6858d1f68f99df82f036e64bac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d3dc3c3d7971604e35b4e01baacd0172ced4a40b5eb1475ac178d05ec36b14a`

```dockerfile
```

-	Layers:
	-	`sha256:df804583af0fc38ff2f02fde60586158acf8d3d3db59c4a6ecdc019d355bf2ce`  
		Last Modified: Wed, 09 Sep 2026 04:04:54 GMT  
		Size: 7.4 MB (7445154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1888dbe29a81ab0878e3e53e4a8eb8801a8cfe45b7d24e077e83bfafdbaf073`  
		Last Modified: Wed, 09 Sep 2026 04:04:54 GMT  
		Size: 16.0 KB (16018 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ae4028dbd5974f357b31e30cceb849c3699ce5a8da7416bcea832609f8e68279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238232912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31fe28d9485ee889ceb5e5d1698f908fb4ba7e684b1f0238cd67baab5a61566`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:34:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:34:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:34:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:34:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:34:57 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:35:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:35:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:35:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:35:51 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:35:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4043e66657eddd8a50944b0e499e9fb50476655ec17f37cf9fa8b81d6068c1`  
		Last Modified: Fri, 04 Sep 2026 00:36:34 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada429cf761e0958bf0a459654d99184ed6e2592bdbdfb8ff13c92d7345ad79b`  
		Last Modified: Fri, 04 Sep 2026 00:36:36 GMT  
		Size: 91.7 MB (91716805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad8968d917ad5d48d647f517ed98ecca784364e198217fb2c54c7526af7a70d3`  
		Last Modified: Fri, 04 Sep 2026 00:36:32 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628ca30f8063caffbf650ea8f2e9c8557d52b3e0837c182522f340ebb0f458c2`  
		Last Modified: Fri, 04 Sep 2026 00:36:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:090f105a714f48b200e07360b004efa676fc2131d272126347da27ec9c7df58c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7443070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5f92cec6f72a840cedffbe4da782092ea987fa31cd294ddffa8109203a71091`

```dockerfile
```

-	Layers:
	-	`sha256:d7350b842f03caf3b5b5d9fdf00494cd9f5f6742c2e0f1af635f400e3ac2e9e1`  
		Last Modified: Wed, 09 Sep 2026 11:28:19 GMT  
		Size: 7.4 MB (7427121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5949ff26c3606479d54565bd9bf54b26a51978a346af9770f67d019608d3ca6`  
		Last Modified: Wed, 09 Sep 2026 11:28:19 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
