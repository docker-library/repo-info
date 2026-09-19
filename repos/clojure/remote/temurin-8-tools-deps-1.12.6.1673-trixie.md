## `clojure:temurin-8-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:22cf600faa9a6cb2bf796d68e74a6fec3192f3e9d5519daf5820e6a2c50c4d5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:2e8197a65ea0343e4e5163b301f6245c740ee8cf2fb4dfba902b7c952bcbdbde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187111795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6e2cc2dd1779294643ab0d405966dff44f67548f827afe7251ffa586205f33`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:12:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:12:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:12:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:12:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:12:34 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:12:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:12:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:12:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ccd0a7c143514ef9c1b8e6fe090763adc78c310d99f98797bd9ae5534ba87c5`  
		Last Modified: Sat, 19 Sep 2026 01:13:09 GMT  
		Size: 55.2 MB (55164378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a4ccb51a5f70fab2f968f81a2cc5cb6b23978d7e9d0d9b0a06f717404c9b29`  
		Last Modified: Sat, 19 Sep 2026 01:13:10 GMT  
		Size: 82.6 MB (82567072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866a6e794da041ff71151b13ce5937761c26b7659390aa1a27ce0c8fc0e70937`  
		Last Modified: Sat, 19 Sep 2026 01:13:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6c50966a864e5d96f56b89eb3518767e6d8ceda1664e27689b32189fe61873ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d94b9cc97aa0e3693421ef25764717b08d6cdd64d9834c5829c9b988a2ae72`

```dockerfile
```

-	Layers:
	-	`sha256:abaae6e1971143901d0104a2da9ec0abfca0ef7eae9be83f72ca3fc5347ffe6d`  
		Last Modified: Sat, 19 Sep 2026 01:13:07 GMT  
		Size: 7.6 MB (7599174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79dae4bf88171dce1502da7e2b9533962dc9b1a6316e45825f01c1f888fd6427`  
		Last Modified: Sat, 19 Sep 2026 01:13:06 GMT  
		Size: 14.3 KB (14323 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:771f40067c5189d4ec7b9b20bbd5bb08bfd964329238b42a93d926c90682800d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186400442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f542ee1e3abc97ac43adbe341984589d9bc3cae6fd58576f7841b499da12c68`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:20:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:20:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:20:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:20:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:20:35 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:20:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:20:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:20:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5dcd86fb9c2e30c282ca6ea40687b05add6018370ba9e3912fade666600b56`  
		Last Modified: Sat, 19 Sep 2026 01:21:13 GMT  
		Size: 54.3 MB (54262766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb78369e6af7c5ab57abbf8dfab35414013f804e73b0137d68aaebafc5e33213`  
		Last Modified: Sat, 19 Sep 2026 01:21:14 GMT  
		Size: 82.4 MB (82388195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cbb8500e4020df779e86d37e7c83d12f5f3681b51fc840ef3ead6ca18b044b1`  
		Last Modified: Sat, 19 Sep 2026 01:21:11 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a03892ce9e6433da838e93a921892e10dfe2e95142dba78edca5aa7a1bc73762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7620709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a501b0b41aa3245eb17629bdd2246bbdec205346423e8e31e68ac2a7cc35623`

```dockerfile
```

-	Layers:
	-	`sha256:05774e1df79288b4f7d262d5fdea9d75f8c8048261f582a5260957efe486298a`  
		Last Modified: Sat, 19 Sep 2026 01:21:11 GMT  
		Size: 7.6 MB (7606267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d59d671d5f82cbfd15ef82239e6e4974c6c248c528a9f7f47f7b3fe6f1d81cf`  
		Last Modified: Sat, 19 Sep 2026 01:21:11 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:252ea04209cd8b2f361138a41510f5e57bdb13a62bc3cc4e08ed5f432b11a453
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 MB (197552300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03582f31e000d2056e2f7da8730a83228490c524309b8c703577a8ef9464011f`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:05:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:05:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:05:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:05:58 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:07:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6d6dd11415fde80284cfdff67a20a05744a67bb1d841cb6e0604cda6f3c8cb`  
		Last Modified: Fri, 04 Sep 2026 00:07:51 GMT  
		Size: 52.7 MB (52670660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1c9aa47577f9e4a7942396f28c1c3b41470ea3d0ce382e1a86a0a5bfcdaf2e`  
		Last Modified: Fri, 04 Sep 2026 00:07:51 GMT  
		Size: 91.7 MB (91716710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41621a4b7f1ac22a7d0d247df15b0c1ff040238933cf24ce5129c4946d6345ad`  
		Last Modified: Fri, 04 Sep 2026 00:07:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7354ff2111e1cb18a21dc165fab0ab572776f79590541e8f70677acaf87c1818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:481d71a1b4e74676736f4e51c2f7b37fc292802b93e9e92152ec80c5e79e7337`

```dockerfile
```

-	Layers:
	-	`sha256:b466877e9a5449100bb58db49aa4a6d3aec42a8a628fd0304ee605bc9d5663d1`  
		Last Modified: Wed, 16 Sep 2026 10:19:35 GMT  
		Size: 7.6 MB (7599247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28ee982f7ec96e01deb54876310bcc04cfaf87433f84f1c68d53974120636eea`  
		Last Modified: Wed, 16 Sep 2026 10:19:35 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
