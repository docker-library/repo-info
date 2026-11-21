## `clojure:latest`

```console
$ docker pull clojure@sha256:a98bde692ec08584d596707066fd2206758d8ab53ea0f49ad1f799dcb14f2195
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:d4e1fad5ee48f19e57e2fb1802dbabf9e49e29815ad86f5771f8baa848039445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237880830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62759329e13e993b715c577e3ee30dbc47a81cd346730cc2ae56d1b5be8b5b4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 17:50:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:50:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:50:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:50:24 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:50:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:50:24 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:51:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:51:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:51:47 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:51:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:51:49 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:51:49 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:52:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 17:52:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:52:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:52:03 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:52:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb5293de7e86307e68d4f50ad0ad4e5b298b635ebd5b381d3ce8a91d7f860e0`  
		Last Modified: Fri, 20 Nov 2026 17:52:26 GMT  
		Size: 92.6 MB (92613905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c62c9f53658054ded221f7862ebd00f2360c70941e1cdc08d0e09d712cf4f4`  
		Last Modified: Fri, 20 Nov 2026 17:52:23 GMT  
		Size: 20.1 MB (20132649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6baec5712309fc55c1a40d7f5313ee8181e38d85bd82d1c16f7d61e70553068e`  
		Last Modified: Fri, 20 Nov 2026 17:52:22 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ac7f19e069b21748765dbc757ef349169bb2987190a53280ec17b27ea11dbf`  
		Last Modified: Fri, 20 Nov 2026 17:52:26 GMT  
		Size: 72.1 MB (72091008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eeccfd2eb73bb61c87dc8783645c6f0deccebf009c15d875a7bc20b203edd7e`  
		Last Modified: Fri, 20 Nov 2026 17:52:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee8e29bef5dd98e5272603dc17c56635a0406993e0dd2157b23faf5e8e097c9`  
		Last Modified: Fri, 20 Nov 2026 17:52:25 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:9b4bb9b29fc329aab3ba9a0d9a7ba439f07e68db7fb7232180929f2b88efadae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7464666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec1c5cd292dd1b51ae82064df988f15df3a110c5e3b8572e105eba731430081`

```dockerfile
```

-	Layers:
	-	`sha256:5261c4eadb175bd1015c0f7e8bed3c3db7f64e9966475877bbee9a88085cf5d9`  
		Last Modified: Fri, 20 Nov 2026 17:52:22 GMT  
		Size: 7.4 MB (7439691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ff99ceb03b674ca275bd38fca2c5c7f256b434a882ff38ed3d2ac664e75512e`  
		Last Modified: Fri, 20 Nov 2026 17:52:22 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ef720bd2577a022881f36b27ab4c7c6e41747d63eaad128cbc625367d2fdf24f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236722031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e515e2b9b3c93bb4d4d218bf2fd98f630ea87805e8f88750d7df08ee520f4dc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 17:45:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:45:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:45:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:45:48 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:45:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:45:48 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:47:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:47:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:47:12 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:47:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:47:14 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:47:14 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:47:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 17:47:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:47:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:47:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:47:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89918442dcef74b63370048e1b2f51422e43c9d0fc08581696a99aea384d1fcd`  
		Last Modified: Fri, 20 Nov 2026 17:47:50 GMT  
		Size: 91.6 MB (91554010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e2e81c575399c26280b46d9e4647cc8193e2f106b33a1a35f5a6ef9e75df491`  
		Last Modified: Fri, 20 Nov 2026 17:47:48 GMT  
		Size: 20.0 MB (19977007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfd7bede4465de4e28c6f37a2124d6734e7cabc10b4b47cadf00bdba5aa3f2a`  
		Last Modified: Fri, 20 Nov 2026 17:47:47 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46526cc1cd543f7e2c369ac1a051ef8812eef8f441ed64d3ccb35d4855b23040`  
		Last Modified: Fri, 20 Nov 2026 17:47:50 GMT  
		Size: 72.3 MB (72261757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b39c603bffc86cf12701249e5448636c755b96d9ea19f623d062cb221eaceb`  
		Last Modified: Fri, 20 Nov 2026 17:47:48 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731528badfb672cbadf0e22ccdc458fa69284fe58f8dbb509e81c30f69b03398`  
		Last Modified: Fri, 20 Nov 2026 17:47:49 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:e3847d778df62b5367ad7c53847ebf1c8982f9f991946f24f8f6a7cde30e93b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b298f16e8757a026d024c29df4edf12a96f941bd3d00558991e80c9a0dab02`

```dockerfile
```

-	Layers:
	-	`sha256:e5bac7104c2c9df539b9a96b3eaabd8f659bb0d5898cc7a1875a31dcf5e2be0b`  
		Last Modified: Fri, 20 Nov 2026 17:47:47 GMT  
		Size: 7.4 MB (7445427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:076be399fbc0ca739d172cc17c9adf92e216d9542169214715100472577d5652`  
		Last Modified: Fri, 20 Nov 2026 17:47:46 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:04279961f44a24ec5f72fc003397710ebc4475b7a676e70ad9f8b8b5eed5b431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245067640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b8dc0ffede67b2841182b7bf79e9f7a896ae9e136f44de5c49ec09465d4399f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:10:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:10:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:10:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:10:03 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:10:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:10:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:13:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:13:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:13:18 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:13:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:13:22 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:13:23 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:14:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:14:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:14:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:14:03 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:14:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2539b6b2dd6d3dc6544d4f155eddc3332014a5921fdd1a505ffcfc835be10`  
		Last Modified: Fri, 20 Nov 2026 19:15:01 GMT  
		Size: 90.1 MB (90119588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c921e73d42ffaa07cdf971f72726deed5f3f1da4ecb345fc8b0e6647a954135e`  
		Last Modified: Fri, 20 Nov 2026 19:14:58 GMT  
		Size: 20.4 MB (20356777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f28bd912207f8e68ac1947468887308e9a166b1e5191437002a539d870fa7754`  
		Last Modified: Fri, 20 Nov 2026 19:14:57 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927cb504532293736e2ae47c89240edfb56d438ddb7810cc090e84c3e6bb49e8`  
		Last Modified: Fri, 20 Nov 2026 19:15:00 GMT  
		Size: 77.7 MB (77705871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e470ff1c7df098a6353f1c144bf1ea8c5a0453ba8a7500a8ca3062f1aed36926`  
		Last Modified: Fri, 20 Nov 2026 19:14:59 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004c92b014ac2d488befb6c1b3307caf6ae834587164ffa28cc239375869f97f`  
		Last Modified: Fri, 20 Nov 2026 19:15:00 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:e4041fa05e5a12549aca39a1e83b333d0117b15718398bb637dac800bcc4c71e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7451357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a096e054ac4d6ec40aea3a594fd72e258f0407df8b0a9ecf8f1574925378030`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee00408089352f6825d8bf522ef43bed87fed9ddb1a0b8469a0144f9b20e80`  
		Last Modified: Fri, 20 Nov 2026 19:14:57 GMT  
		Size: 7.4 MB (7426342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ebd8834d218b3264d1c81757ad0f9b278980efd6fd18e49b31af34ec64d2436`  
		Last Modified: Fri, 20 Nov 2026 19:14:56 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
