## `clojure:temurin-25-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:55976c69bff74947d794097d9627fd669e568decd5144e2e5dc290aa45836d8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2c94b9c40d13298472648d5cafdd49211928ab6284677a6ce2a3cd22b23b1cbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187456363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a57d20302a59c4a37f991bfe3be8c7a7b3115b0958f19ebfd5bb4b2c3dd121`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:22:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:22:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:22:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:22:08 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:22:08 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:22:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:22:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:22:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:22:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80fd997304d3ddaa64abd844d43673277abae0598b04414c20789481e8d095fe`  
		Last Modified: Tue, 14 Jul 2026 02:22:43 GMT  
		Size: 92.6 MB (92574565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f522886b89b16399d26796975946b9b112effa9db75346c48fe9bdf30698aca3`  
		Last Modified: Tue, 14 Jul 2026 02:22:43 GMT  
		Size: 66.6 MB (66648114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeaecfef0b02a1a13a60e4b84925893a99e43c5aa5923e1c223a6c2589b2162b`  
		Last Modified: Tue, 14 Jul 2026 02:22:40 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e53d0010e6d1dc706193c1cf3ebb201893c287a4154f20db7f585f2ede5276`  
		Last Modified: Tue, 14 Jul 2026 02:22:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3820dc638bf6c6bd2c153daa8ce229229cd3d9007ed9be09d70aec3ca0b918f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5098804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd40092b0025d8fcba6b9f3971b8661c3d5b1b9e3b036d01f372fd24705ae6a`

```dockerfile
```

-	Layers:
	-	`sha256:ec163d704b9429cc5ecef78ede572e356555044163691632927a285c06f1b244`  
		Last Modified: Tue, 14 Jul 2026 02:22:40 GMT  
		Size: 5.1 MB (5082125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf8c814f9df782cb108c10e7bc996cb64d5b430bdaea2ed02bce8d9701703b15`  
		Last Modified: Tue, 14 Jul 2026 02:22:40 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bce8817520331beb3b8dcdce25c699951e27d0d9ed962c633e7195601dee0c98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186298535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46fa79d7b780b79e247e73283a2745ef5a402ad8e734c3d3bf6c0e6ab9f63466`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:29:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:29:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:29:22 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:29:22 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:29:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:29:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:29:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:29:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:29:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e87802c51a9324866f72149260a72845d7a377255b0d0e65fef20c1a1d416b`  
		Last Modified: Tue, 14 Jul 2026 02:29:58 GMT  
		Size: 91.5 MB (91542261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f07861dbaf0be931faf9f36a7dfeec267911e36106e468a48a41ad28f840a703`  
		Last Modified: Tue, 14 Jul 2026 02:29:57 GMT  
		Size: 66.6 MB (66637980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3a703a2a09602d95fd0181329b000ebb6f230e1aad809a5aba149711383d83`  
		Last Modified: Tue, 14 Jul 2026 02:29:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c048662859569170aa06c8780cb1aae6c542b3a9ce472316fb77564cbd4c1c56`  
		Last Modified: Tue, 14 Jul 2026 02:29:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:93a1b8c36c68da2b3091edc73fcc9d5c65ba890fbe8511b299bf291b3d853950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76be585daa80186a702b2b6170ebcd138f72c99e9d83a0c2f1fd9997f5afab39`

```dockerfile
```

-	Layers:
	-	`sha256:cdef98e73363c8e035806fa8b80dc8e4d7cd650ca0d98a46d1e41a68f2aa3f8d`  
		Last Modified: Tue, 14 Jul 2026 02:29:55 GMT  
		Size: 5.1 MB (5087907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:914858cae96d90312bb9b9067c2a132ec4b2d8f1a0ac0efaebdcebc0a329a492`  
		Last Modified: Tue, 14 Jul 2026 02:29:54 GMT  
		Size: 16.8 KB (16820 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1465b858d20584d6f14234dd67469e98c0589b53fae76cd358c946c03df9af7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196473167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7abaecc63b36a4cc56d9a1b57aaada26627cc3ec02dbd61928678c15e27e210`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:34:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:34:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:34:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:34:17 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:34:17 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:42:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:42:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:42:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:42:36 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:42:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ad1347ac99eda388900bf32362d26821dc5ce6f75106fcf350c34a7f8986e6`  
		Last Modified: Thu, 02 Jul 2026 07:37:39 GMT  
		Size: 91.9 MB (91914031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f423c0281a9e371c29a57051b11df7d2d6e6e2a259e22956e9de94301dc0fe1e`  
		Last Modified: Thu, 02 Jul 2026 07:43:08 GMT  
		Size: 72.5 MB (72476114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b44dcfe371e9c0e284e73da2819ea3f191f52611cbd8c67c5166a6854174142`  
		Last Modified: Thu, 02 Jul 2026 07:43:06 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029cd8719ee4e0bb41ede32b9e19e3566d7ce5c366234f96dc87d66891132695`  
		Last Modified: Thu, 02 Jul 2026 07:43:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:73d897af147f6e588139a0ae545ff33b72996820ecac021c051f66edf2e4ed0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5087310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93072d05d98b96a84321dbd94d7af72b1a92ee2ddf1313118b229cd222480757`

```dockerfile
```

-	Layers:
	-	`sha256:b4dfa786fdad313dc5b8c382c8527dd66c29cff5f421e6faae739614311ebd05`  
		Last Modified: Thu, 02 Jul 2026 07:43:06 GMT  
		Size: 5.1 MB (5070571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e17ac9910f02ce08ed9d0d498b2d48d35e7b7f9ccdb3bfe578a497823be71404`  
		Last Modified: Thu, 02 Jul 2026 07:43:06 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:2c4ec7ba311127a789554e05426e59664d278b83339a51b1e1e0e51be5b744ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180758618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7d56ad6599a639ea6a13703418424566ecf1e59f020559a032d74a4773849e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:35:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:35:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:35:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:35:30 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:35:31 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:35:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:35:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:35:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:35:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:35:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2e547c6201fe505125fd7de7b223fb93349c53e6e49fba47256fc29b11a8a5`  
		Last Modified: Tue, 14 Jul 2026 04:36:10 GMT  
		Size: 88.4 MB (88420359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253fb314026a0434d916481086757f0c61f8d39101861f8d22feae06110ef065`  
		Last Modified: Tue, 14 Jul 2026 04:36:09 GMT  
		Size: 65.4 MB (65448951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223b0aea84d98e2b5bcd9d5775d4fc9ccd42434843e30f1e52c3ed0be9b7d378`  
		Last Modified: Tue, 14 Jul 2026 04:36:07 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e22aa4f910e675e5dbda44fbf78812d443c868ca88ce3c90d287868971fcf71`  
		Last Modified: Tue, 14 Jul 2026 04:36:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:db7fec13c94eaad13f2b1d4ce61a842bc28fdf64711fde84937906d41f008777
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5074687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aeea38e4b2eed361bb3f302586975e2f7d5603b77b886c67ab3233299c97c4a`

```dockerfile
```

-	Layers:
	-	`sha256:8b1b01cfb73a8fbfb9c1eb06ca9904e3fa3b2a00bc7c43d4f4da7481dc4fedc6`  
		Last Modified: Tue, 14 Jul 2026 04:36:07 GMT  
		Size: 5.1 MB (5058008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ef8e00a701fa967bdab39518ef77262aa5f102b3b4821ae67df4cb0e2e56933`  
		Last Modified: Tue, 14 Jul 2026 04:36:07 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json
