## `clojure:temurin-17-tools-deps-1.12.6.1673-bullseye`

```console
$ docker pull clojure@sha256:edae2d2ee24b370e1cb8b6a0fe91ae86612ea5146ad489f7119d1a1663261cc8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:7888e503b788e3f57bbc5a839cdb9f718182c2287db01b414e79ed0895f61a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266138317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:882f223406ce3a1e65360834b03e0d914c91398846ba4e501c05d1eefe7bf28e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:02:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:02:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:02:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:02:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:02:21 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:02:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:02:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:02:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:02:33 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:02:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5472ef42a389ea392d1395cc3e63018788607b95eb7480b8a6d0acbdc69d6360`  
		Last Modified: Fri, 04 Sep 2026 00:02:55 GMT  
		Size: 145.8 MB (145822632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9cad5bdb65cfe655642f6d99f26b008030c4047adedc1627d5d70262dd56d3`  
		Last Modified: Fri, 04 Sep 2026 00:02:53 GMT  
		Size: 66.5 MB (66537252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8dd96921fd897a533749dcd667dd91a3718baa96ad92a24b424276db6476eb`  
		Last Modified: Fri, 04 Sep 2026 00:02:50 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a83d38f6a27c9199fd72308f86fa9867452081a6d6c858b7a55383d86d7f324b`  
		Last Modified: Fri, 04 Sep 2026 00:02:50 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:8eabc8736a4c67871c376563907c5d29716b7ff48c5b136ba6a56180f65a85fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7426581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9ceca355b4ba90c4fb06775af1642994fa59efb68f5a8030afda5deaa61db1`

```dockerfile
```

-	Layers:
	-	`sha256:beb03318ca6d0285da358cd77785a20660a7ab654f4d8a489d508e27a74c3c94`  
		Last Modified: Fri, 04 Sep 2026 00:02:51 GMT  
		Size: 7.4 MB (7410650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c1ba80b2a96fa279d99fae170de8165fe4c0b43a72aac96019a0aca9bbd34a1`  
		Last Modified: Fri, 04 Sep 2026 00:02:50 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d5814dda7f8b47e4c9d4c6685bec4cbc66a06a5c817653a0ddb2d45f711e46b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263610743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f4b9a40df66db5cd6b4ace12b74338256746c7ed51190ad9499ca1092ff442`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:06:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:06:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:06:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:06:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:06:17 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:06:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:06:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:06:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:06:30 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:06:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2e141934560b6afefdad58069473f7898e52d3c01f54a6ebd6bc885d90c161`  
		Last Modified: Fri, 04 Sep 2026 00:06:54 GMT  
		Size: 144.6 MB (144647521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2245ca6212a20b3d50f3433e1c35c20e0cee256761e4054fe6a5becc2de3a5df`  
		Last Modified: Fri, 04 Sep 2026 00:06:53 GMT  
		Size: 66.7 MB (66700840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3e94e427f9f383f06470ca9ceb0fb37d9cfc14a243422b2b7928c33b03f5aac`  
		Last Modified: Fri, 04 Sep 2026 00:06:49 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ed803ec2ca76abe6c372913b7da27639222735f55f7479ec66827abae2af5d`  
		Last Modified: Fri, 04 Sep 2026 00:06:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:0bb69ee285eeb2afad86edb3062a871b7dbf1c7024121e63dbff02827eb579f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7431799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e78e2b35f85863e279c520459e12cbf583e474344bcaedc31f235530ca9898`

```dockerfile
```

-	Layers:
	-	`sha256:aa62c0b0667fcfa8ab41c1f108f5c838233c8466c74e6bf65e53ca6c654c3ffb`  
		Last Modified: Fri, 04 Sep 2026 00:06:50 GMT  
		Size: 7.4 MB (7415749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dadd3652850035d40b2c4d210e28956723fb6d9e36fcde7d28f69ae15ab0e08`  
		Last Modified: Fri, 04 Sep 2026 00:06:49 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
