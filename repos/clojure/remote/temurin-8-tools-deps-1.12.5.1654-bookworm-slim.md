## `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim`

```console
$ docker pull clojure@sha256:f127376bb8075f44c4857a5622e2b266c65ab957cd7690e84f7151517fba39bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d2f426eb440cbfb3211ecb634343feaf87e8eeb246b6d8c85718724f1bd8e5a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150080055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432571b2ed06e482785fb44bace79f127d9a3714f995f8ef0333146b9ec21346`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:25:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:25:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:25:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:25:45 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:25:45 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:25:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:25:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:25:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a1a4da632010266ea0638aacb63f8d429bf99b9d3d3d1a4c30b4cb9f21dfdb`  
		Last Modified: Thu, 16 Jul 2026 01:26:16 GMT  
		Size: 55.2 MB (55198725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eadc683a051632d3b8b99d7e0aba41e504299d9786aedce9d97397f73cc3cac0`  
		Last Modified: Thu, 16 Jul 2026 01:26:16 GMT  
		Size: 66.6 MB (66648043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdc4c18b09a460edb6a7a22ee6c606660743eceac9d026617fe37a1342f793b`  
		Last Modified: Thu, 16 Jul 2026 01:26:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e24f7d2f69b8979202841603f8d9f1fa138a22a83de3ebf7085de618cbb06d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e25ee014d65668a109997767df877da0a6f6abd88b15d474992271dd65d0687`

```dockerfile
```

-	Layers:
	-	`sha256:c1bfc1742dfd56d3185812dc2e42f7c03cf75580179f4aabc93598674abcc875`  
		Last Modified: Thu, 16 Jul 2026 01:26:14 GMT  
		Size: 5.2 MB (5234395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9db7b8857d059d70610e599c0ab0b6a0bedab0e43072fc95f261464975e0802`  
		Last Modified: Thu, 16 Jul 2026 01:26:13 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:390a2a5dad85bf3b28864a4565253eef9d450704170d3ca519b8b01c44b2a93d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149028970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:716a3bf318828f22536d85fda99174a6e226c3035bf3f826c9bdb7a3b386b79c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:19:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:19:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:19:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:19:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:19:07 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:19:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:19:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:19:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83a7a05228af9843e86249b5caaff0132e720f1943afcb9a54780d2820cdb85`  
		Last Modified: Thu, 16 Jul 2026 01:19:38 GMT  
		Size: 54.3 MB (54272935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dca129c5c34ddd7c5f827f40798e68a0683c44255d5125714d9c97935e726646`  
		Last Modified: Thu, 16 Jul 2026 01:19:38 GMT  
		Size: 66.6 MB (66638135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19921f67da7be0616c9e2933749ea5e0ae80f218923d9a1df338dc02fccdfaaa`  
		Last Modified: Thu, 16 Jul 2026 01:19:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dae0de1e97e29cc0eb6c0d2b8dbffacfd403bd080f8994b158736a860e89cc73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5255376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6348cb53d41b69a543c8de74eaa3d05d2d37d11cee04f785e8a3f12386b0331`

```dockerfile
```

-	Layers:
	-	`sha256:fe1a1c29942e34ed866045e73ea5e39ea928db68eeeff7fff567e8c8d9bfb127`  
		Last Modified: Thu, 16 Jul 2026 01:19:36 GMT  
		Size: 5.2 MB (5240856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f431edf85ccbef81cf2cc343994119a3d06775e6435fa48ac118e28604f4526c`  
		Last Modified: Thu, 16 Jul 2026 01:19:35 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:689be83ef92ee50acc69acc552913603e69bd6d4a5b340e7af5b323ebecb7421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157223644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c61a803b47a4400e998646c2ad590c66c31f556cb38680fbc6e2c35d907df22e`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:23:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:23:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:23:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:23:51 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 02:23:51 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:24:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 02:24:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 02:24:23 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501f134ddf0363e06b855c0b86a47e99b5c33f40f91b6ba30b4aa5eaf1628bc3`  
		Last Modified: Thu, 16 Jul 2026 02:24:55 GMT  
		Size: 52.7 MB (52669151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b372734341d04eb103150a2ece08361782b710480dfb90e3cf80e0c197cd49`  
		Last Modified: Thu, 16 Jul 2026 02:24:55 GMT  
		Size: 72.5 MB (72477433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d60b134eea379d9dc644babaae7d276a675e932eb9de9dcc8afe7ea6a3890ec`  
		Last Modified: Thu, 16 Jul 2026 02:24:52 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9bdc0f98bcfc43b42312a1ddfc10e7bb909885db62a4b5445413f81813c63b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec4260aee0448a110cb0c08f542d7a99ef7cae555b673381ddb5eeefecc4e35`

```dockerfile
```

-	Layers:
	-	`sha256:31772fc5111054f0d9f91c82d4954bfbc0d956d9a3c02bc4e22632652aca1ed5`  
		Last Modified: Thu, 16 Jul 2026 02:24:52 GMT  
		Size: 5.2 MB (5240148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea3a0a53552a0c76495888d3d8126efb600fd56d6e11f917b59293520e3d7d9`  
		Last Modified: Thu, 16 Jul 2026 02:24:52 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
