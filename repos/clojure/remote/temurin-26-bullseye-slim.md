## `clojure:temurin-26-bullseye-slim`

```console
$ docker pull clojure@sha256:c7c861756e0466beca7dd11598ed347b5f1cee72a82e6766f6b5ffcdc6d9a440
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:41dc4d82c0f119d416b06db8bcb3b14e38ed7a2598b87eef5776b74bc9d6f30e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180939279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7756911526826f48a4d7fd50ba76fb40288887728e5e2efcd2e2fafc55c57d8c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:23:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:23:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:23:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:23:46 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:23:46 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:24:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:24:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:24:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:24:00 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:24:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d02cd10abae374a7b9eb80c09f7ea134a22eb638cd8e092dc556211e34481b7`  
		Last Modified: Fri, 21 Aug 2026 19:24:22 GMT  
		Size: 94.6 MB (94563780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d93c94bdf94dac6e67d691690050e8f7f2dab29df4359c12c96b6022158446ff`  
		Last Modified: Fri, 21 Aug 2026 19:24:21 GMT  
		Size: 56.1 MB (56114838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d88539b93afbb3711e1394e1e952dbca53fd97f176524422a7c92d3b3e4fa5`  
		Last Modified: Fri, 21 Aug 2026 19:24:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d216f8e8086694015bd59cfa53081d7c2d6cfb8ae3fdc0b4d5ef66e0ce6849e`  
		Last Modified: Fri, 21 Aug 2026 19:24:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d98a6942f92964508d9bdeb611a97a8399685410c2ad660e0382afea14548900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5303928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50e38b99e164b72eda6c02de7318bb5d2ed6a566f5930f41e9386052a39d6ef`

```dockerfile
```

-	Layers:
	-	`sha256:008f5310cb62edd76dba7ba17b4bd0078eaf7d53926736f77fb46840ac09ebcd`  
		Last Modified: Fri, 21 Aug 2026 19:24:19 GMT  
		Size: 5.3 MB (5287945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da7c1465ee7e033f049fbe9512a8ec8c954af6d4117baf22a07bff2f449a0f4a`  
		Last Modified: Fri, 21 Aug 2026 19:24:18 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f21db6d5bfc21e78ca197032e9cd77e25f2bcb08c0361cb076a88e38a5783708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178572797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd55661f4ab955e57e21d00924256e0d2135932e3b9c3aed37d8ffee0b7f4ac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:13:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:13:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:13:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:13:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:13:32 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:13:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:13:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:13:46 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:13:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348358364eba57307264c581aadfe15a6bd7bea9905b9781734d8101c920b9d4`  
		Last Modified: Fri, 21 Aug 2026 19:14:08 GMT  
		Size: 93.5 MB (93541563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631f7733b34f789aec98ee68aec99ff6e155bca86defd3e9fc838c7682d7c286`  
		Last Modified: Fri, 21 Aug 2026 19:14:07 GMT  
		Size: 56.3 MB (56281288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ca57ec2914246d09692e2f40a9d7182ac3d655b28e3865cbbd588e74310760`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b75c6b30e338c789c6cbd9c805528863ec3ef5561f719533232917ea7d90e2`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0b1667e870a4c0ea010b7fe93223c7ead9a319b752779b4513b563330ae93f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5309774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:889ba94c805110841fbf1e73369ab923d40a87be3d17571f4693ec77ec83ddf9`

```dockerfile
```

-	Layers:
	-	`sha256:310cf8fbbc6396a532f337d9e5cb0b84a9b446e7eeb35b005c31c3be0a64bf90`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 5.3 MB (5293674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60ee344250296606ec69d1bd7b8bc09ac7b2cc9860b80b5c35c76742c0352226`  
		Last Modified: Fri, 21 Aug 2026 19:14:05 GMT  
		Size: 16.1 KB (16100 bytes)  
		MIME: application/vnd.in-toto+json
