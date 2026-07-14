## `clojure:temurin-17-bookworm-slim`

```console
$ docker pull clojure@sha256:9c93614f2b58d4e97a6948b75bf268217110edd008a79374a6afa137ec5e6f9e
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

### `clojure:temurin-17-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f01c1c0c1ac524320c6d25ea452094eb1f3038ca93f4f231b1bc057eef38545c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240788143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9426e3a752202c39244ea18013f13b61ea65f497f94d211e0b9e2321b4d6c310`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:18:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:18:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:18:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:18:48 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:18:48 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:19:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:19:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:19:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:19:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:19:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d52ac2123bcc6304c0acfc01f787f9770202e680cb6f074a4542937bbad69c2`  
		Last Modified: Tue, 14 Jul 2026 02:19:23 GMT  
		Size: 145.9 MB (145906288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dde9674d12e97b94151d68d86c77be8dda5149db5c08d605df8835d78f4edbf`  
		Last Modified: Tue, 14 Jul 2026 02:19:21 GMT  
		Size: 66.6 MB (66648173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191581fead847878cf4950164f056d82f2d2ea7dd252e14b1f94ad2408672467`  
		Last Modified: Tue, 14 Jul 2026 02:19:18 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:120b8e12b412b9492a031e873cd7dbdcbb668263f767c0d5ef863b4012114633`  
		Last Modified: Tue, 14 Jul 2026 02:19:18 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:90bee1247f555763fc1496940f26df41cc17b6d7a8463b47bca041551de263c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5130025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b7c8b5128d4a0fcdf38c69db87870bd0d0a8940850aab31d380c9e41ce1e74`

```dockerfile
```

-	Layers:
	-	`sha256:0ba9b198a32b440ba4841a8f63bce725ffb00193f6f1fb5f9992789910d300bb`  
		Last Modified: Tue, 14 Jul 2026 02:19:19 GMT  
		Size: 5.1 MB (5114035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef4daa62b3236ec8f2d7ee3eb26003260dfa2dae94e78c62f162596292c22cc7`  
		Last Modified: Tue, 14 Jul 2026 02:19:19 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:327e483d3b11e8a08f55bd3159d9212751e0ca7c9b20917711ac11fcd3f1860e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239480771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dd28c652cf4d24bb977c09777752de7ce18271e38f75e7f72531fca49ffed0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:25:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:25:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:25:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:25:52 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:25:52 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:26:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:26:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:07 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f09ec18ad503625a59289e11f26cd13b9f993e3d00c8359133c008f157f1875`  
		Last Modified: Tue, 14 Jul 2026 02:26:30 GMT  
		Size: 144.7 MB (144724320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab0e456b9b0075525e8ebc32ab08e0cd970d33081debe6a5b56754a6ae21ba5`  
		Last Modified: Tue, 14 Jul 2026 02:26:29 GMT  
		Size: 66.6 MB (66638159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed25cb8c044c66d34e4a9fdd4d9926551a8da8d7f6b4ec782e0d24eeacc439c`  
		Last Modified: Tue, 14 Jul 2026 02:26:26 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cac1060ad4f70cd6dc7041cd65b5fd6413ea6e483b4a78a95bf1edc735ca0a5`  
		Last Modified: Tue, 14 Jul 2026 02:26:26 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:14baf99a673aac6bf6d3ebff4dba71619d045575c5077e1b82ca380bf541857e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1330f66edaffc29cee881f1847d136e49143306236431b3d6fb41a62d4622c`

```dockerfile
```

-	Layers:
	-	`sha256:99d263b4e2dca42da7c7f103c557fc09e729ed6f8ac06a7b22e5ef1b76ba0466`  
		Last Modified: Tue, 14 Jul 2026 02:26:26 GMT  
		Size: 5.1 MB (5119796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa65ab648d17d9409904176e010bbcb12423bfe89069e200ce5630696e3b588b`  
		Last Modified: Tue, 14 Jul 2026 02:26:26 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2908f71d85e9cdcdaed000d1565a330675e7d43df95111bb891045ccf6511beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250325145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1c009c8d758fe2a6cd14527bf2093b0da32f417d8802356ac545ba769717fd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:06:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:06:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:06:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:06:31 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:06:33 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:16:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:16:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:16:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:16:36 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:16:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7229c8e0b663baf447dddd27c15f1ceaae1559bc107cce4efdf074f13bf0e26d`  
		Last Modified: Thu, 02 Jul 2026 07:09:31 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e532e910f9cbd6995d005277beeb0c71bdc79e385cd4fbd6c97e71c467c336c`  
		Last Modified: Thu, 02 Jul 2026 07:17:13 GMT  
		Size: 72.5 MB (72475940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fabfb1cd3cfe602193cb0b346b501d3ddd8330205ca79a8dedd913045f62f6f4`  
		Last Modified: Thu, 02 Jul 2026 07:17:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c386d5e14249ef8eacc1ca55f31aca6ac9cda48a3938029ef0849ddc9d438885`  
		Last Modified: Thu, 02 Jul 2026 07:17:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:33715d1ce6c1591e222aaaec1cbdc5f6db0c006eb9a4731a730c0f76ed0f11e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ca64b7c8e1c52395f25abe7ed6f187b43378def28d73285b82534c4fe64e2b`

```dockerfile
```

-	Layers:
	-	`sha256:d7a7235374ff28395fced4694b4a40906ab20fb94ae6a722ac4c0125ae3fe2b6`  
		Last Modified: Thu, 02 Jul 2026 07:17:11 GMT  
		Size: 5.1 MB (5119157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ed0461fa878ff8dcb671f85716c2e9996f6ed0ec607d778e370de7ac687d892`  
		Last Modified: Thu, 02 Jul 2026 07:17:10 GMT  
		Size: 16.0 KB (16037 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:2a2ad53dc25c3092f2829ac980739cc6ca4759ac545000087438bd00f15cf44b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228248767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:931de4afe42fbf13b9663e3be765a55021bbaf3b86e8b6bbb3bf0b3a4121c2ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:28:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:28:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:28:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:28:16 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:28:16 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:30:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:30:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:30:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:30:18 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:30:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f083990f45009ab41138be417d3ed89f87007fa32aed25a0217e54b661f2a444`  
		Last Modified: Tue, 14 Jul 2026 04:29:48 GMT  
		Size: 135.9 MB (135910454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9219acf187b52de1a33b00220a2ce4dae70ef9898ee0bca71b8aea019fbc3cca`  
		Last Modified: Tue, 14 Jul 2026 04:30:40 GMT  
		Size: 65.4 MB (65449006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548ca205904f1dce8ea75fdbafd0e8a4e95b9847c667de1914e177bbaac61560`  
		Last Modified: Tue, 14 Jul 2026 04:30:39 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0275700814a756bf5e528055b479a0fb167339fbf04472a0f5553538f37a0e3`  
		Last Modified: Tue, 14 Jul 2026 04:30:39 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f9d9f0c093442dce280fb8c3d720dc990fc95b5843f38a95e9427c0cc59357d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5121346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f7cc4171e722f36af3ea4b80158a050cfb61f3c0df8efebee06d8d7db7a0c5`

```dockerfile
```

-	Layers:
	-	`sha256:0abab6aa78243c251182087e7ae90b4595ceaacb8afde3f23b692b0bce929ca3`  
		Last Modified: Tue, 14 Jul 2026 04:30:39 GMT  
		Size: 5.1 MB (5105356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f983a6e2d5351f328779081263611889e35bcfbc45378db983927d5d382c71b4`  
		Last Modified: Tue, 14 Jul 2026 04:30:39 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json
