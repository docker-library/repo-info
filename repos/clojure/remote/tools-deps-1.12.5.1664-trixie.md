## `clojure:tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:164bf3ffe43bb0e85796dcf5e6aad5a108d28e94aa2a1db36575b119fe058285
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

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:03b1a98f92a2c3b0c148c7a3cbd0be1eca7013122008a1d1838ccb1efd779173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224492879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4079c9ba043c71190e33e23cd067cb82634d83c8d1e57b2f2794712b2e076c5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:32:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:32:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:32:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:32:05 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:32:05 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:32:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:32:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:32:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:32:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:32:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b646a99bcd038175aa9f519316035f33af755e00496af1ae942b5ab23b4e9b32`  
		Last Modified: Tue, 25 Aug 2026 01:32:43 GMT  
		Size: 92.6 MB (92615082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25767ef9345a342c3664cf8abd62b272e34ab9b1d90004cdf9a1109209c30ec`  
		Last Modified: Tue, 25 Aug 2026 01:32:43 GMT  
		Size: 82.5 MB (82538931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c20a54ed0dda5e007c7bd33f1c5fc1ab9fa9c9297a5971e6cc1276323d70472`  
		Last Modified: Tue, 25 Aug 2026 01:32:40 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60a805dc86385f546201227f4917c941fe11b925507c509bee364a6dd1ea1a4`  
		Last Modified: Tue, 25 Aug 2026 01:32:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:61ad17d6c11315f185534c6e010de2d2fd33a834261502f318cfe86dfb601e1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7458500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8fc8af6d83edb8a77c137861c7063fc96a69963292fa2a270978dd2dc7509a0`

```dockerfile
```

-	Layers:
	-	`sha256:037b9a5c08c1a7ce00212b560e891774bb349ce26a44e0a37620f146f65efdd5`  
		Last Modified: Tue, 25 Aug 2026 01:32:40 GMT  
		Size: 7.4 MB (7441933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d6259843ecbf7683708e034bca61ced946f774e9dd23433e183a5c8ebf279b7`  
		Last Modified: Tue, 25 Aug 2026 01:32:39 GMT  
		Size: 16.6 KB (16567 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:16cb96c66fb213e603c131cbe986824743adc2f68f0c95a924bdd28298705794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223597142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25179998bbe7c5c1fb00dd62d1ff8659c8b728edc2128a3c72b1bbcb5bb6c02e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:36:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:36:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:36:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:36:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:36:28 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:36:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:36:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:36:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:36:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:36:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb39d3208e78ad60832b241a181f166fd04f624823978825cb81a1eadd8a93bb`  
		Last Modified: Tue, 25 Aug 2026 01:37:14 GMT  
		Size: 91.5 MB (91532190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1e175a446c23d88ff42baee250e7f61b3b6e4ce0826ff56ab5c9999a34b1a1`  
		Last Modified: Tue, 25 Aug 2026 01:37:14 GMT  
		Size: 82.4 MB (82359056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662743ea041998b33e73665bb921991e23df85c7ef16bb2e8275b18c46ecc762`  
		Last Modified: Tue, 25 Aug 2026 01:37:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4698b0a3ef31d31250834311b607617abae47b3e611f878cb147606d798122d`  
		Last Modified: Tue, 25 Aug 2026 01:37:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2ff50c8f2e75ec58ba402450d86ea0c7df84778f28e49da1abb8aa032d552963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a82c2ac412414674608fcf1aaf915439d96029a5356bea98d828c30dc387e4`

```dockerfile
```

-	Layers:
	-	`sha256:2c7a23a0ecef1060c7d0dcbc015a1318d65342611e1e6557b1ba8add34bea263`  
		Last Modified: Tue, 25 Aug 2026 01:37:11 GMT  
		Size: 7.4 MB (7448347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b5bbcf53766531736e9fa8086fa32a1ebbda3bb2a8645b362c697e692b31f4b`  
		Last Modified: Tue, 25 Aug 2026 01:37:10 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:79facdf3d28393a09d2091511df2a406c2903d03164473992abca69f476666a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.4 MB (232371780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f6203ee29f8148d98fb5be9c4a7a0a0c6d5742eebfe8e16c6c60f9965dff4a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:43:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:43:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:43:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:43:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:43:09 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:50:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 08:50:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 08:50:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:50:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:50:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756c47952e9c84154196b3b91fa8d27b75a4d3b7df506babdaac766bbcb38835`  
		Last Modified: Tue, 25 Aug 2026 08:47:07 GMT  
		Size: 91.3 MB (91255804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959abe9f52cc3f0e2a3b25513a6777d77130090b0d1d3b07118dce170392b51f`  
		Last Modified: Tue, 25 Aug 2026 08:51:26 GMT  
		Size: 88.0 MB (87950649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e18142dc9093201e80fdb140053ffad2a1e32e8717ddeb983cbd48c45fdb184`  
		Last Modified: Tue, 25 Aug 2026 08:51:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0872f8b77c6e035b38d8cc4648af1149d6d563afc8a37dcd9cdb2c7c0a4669`  
		Last Modified: Tue, 25 Aug 2026 08:51:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5e1e95832c19d6c79bae12289b26144ecc07108353876b33fbff0e35d8c9e947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7446307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6a6aa780387b741c089d5b9fa2d0c0e5f68d8eb3040f39d68d78700f269e36e`

```dockerfile
```

-	Layers:
	-	`sha256:411fee30d7a6ecf85e515af84a7374bb1371f451f53b5ff698bfd7c034b98281`  
		Last Modified: Tue, 25 Aug 2026 08:51:24 GMT  
		Size: 7.4 MB (7429678 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:977e8664bc308828b8d11286d670f71a0e67d81d886a4b6efad742fae7bd2893`  
		Last Modified: Tue, 25 Aug 2026 08:51:24 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:82f359c705697ac31a52279f639b776b1bb0dec0f6c30a65d0782e41d0f86dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221349252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05bbeb017f0e3f328ce8a5d4a96254b78f831d9b0502744d5bbb550d1c93a20`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:10:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:10:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:10:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:10:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:10:15 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:10:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:10:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:10:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:10:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:10:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa685fab59e7a5dc3e397107fb625359499cd806d7e36b9b343d8e05d5ff4af`  
		Last Modified: Tue, 25 Aug 2026 02:10:58 GMT  
		Size: 88.4 MB (88421954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96369df88fa66ae34f24a02ace1f414be770dd448bf4ac99bcde4714e008c329`  
		Last Modified: Tue, 25 Aug 2026 02:11:01 GMT  
		Size: 83.5 MB (83519560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721876665beedb8cb394036dadcddb98c0344ea044ead312cd71419974f506b`  
		Last Modified: Tue, 25 Aug 2026 02:10:56 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc5b505d0ce8d51057e9c14a0961bbc79980098c4126d5c735b21e330c533f3`  
		Last Modified: Tue, 25 Aug 2026 02:10:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:16b145fd5c85c8c8c0fd9fa5cea2366778dced511601ec0df247d9c389b33d5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31883d4cf975315235e77275a4c3ba446adebb6c2b34f9cefd5729c359d95608`

```dockerfile
```

-	Layers:
	-	`sha256:d3c93fce2e4ce89c81a02c04c437263586a354d77b53fc4a4f1da4e5317b123c`  
		Last Modified: Tue, 25 Aug 2026 02:10:59 GMT  
		Size: 7.4 MB (7422417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29a53f10b4168f81fb4e6ec946fb2336770943cc47df49aefce854c173cc93c3`  
		Last Modified: Tue, 25 Aug 2026 02:10:58 GMT  
		Size: 16.6 KB (16568 bytes)  
		MIME: application/vnd.in-toto+json
