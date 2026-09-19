## `clojure:temurin-21-lein-2.13.0`

```console
$ docker pull clojure@sha256:85a59bb53aab4d37e5bbbd200abdaf3d384b1b2f2570c0104040798b09a1b7f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:e3e309d25f668416388e5ccb36d4d1640f53b4f3a8717c71eccf124d13c93433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231272984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6cad180ac287e86712cb5b9c8dbbe33e8559460633eac377634b20a7da63072`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:15:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:15:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:15:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:15:24 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:15:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:15:24 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:16:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:16:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:16:34 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:16:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:16:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:16:36 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:16:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5780daf62a068c31a82e5bce3478d9e2b6b097fe1487c44043dd66cc47deaeb`  
		Last Modified: Sat, 19 Sep 2026 01:16:58 GMT  
		Size: 158.1 MB (158120352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd54636d4f16730be9650cdab05a1babe26b8170592978a6d3de0059f88868f`  
		Last Modified: Sat, 19 Sep 2026 01:16:55 GMT  
		Size: 20.1 MB (20133553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269d47a04e08e24e526ba234b5f14d97a098bd9a4061cd5316079a4b3fa8cfb2`  
		Last Modified: Sat, 19 Sep 2026 01:16:54 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107054737d8d74161d2c52ecf02c3afe5b0b548fd313f651bee0ebf674d2bd71`  
		Last Modified: Sat, 19 Sep 2026 01:16:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:b257e747b6fc8a8a7b2bd40778d789d8597cbf16ea8650f6d0d8d5dfd806d821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d1d756876887df53d54f07877c35ef85d5e3bc39528a4b9aabe9ab1ca47f43`

```dockerfile
```

-	Layers:
	-	`sha256:4b1413dbb9c8d825cb642bf100f3291017df67fe476b1b90458f75adb4b2ffb6`  
		Last Modified: Sat, 19 Sep 2026 01:16:54 GMT  
		Size: 4.3 MB (4291793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fb7641c663e78be1493bafbdf0a29a37893efcff2534397a8ba7cf72047f178`  
		Last Modified: Sat, 19 Sep 2026 01:16:54 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3743622144e809f7af50ed53c0abc135d93c022e3e85845992a9b12a285d6cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229264214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3043ed8f8565b1c09a310df590fea5295d71b510a2b982186151408b37ce906a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:22:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:22:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:22:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:22:45 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:22:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:22:45 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:23:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:23:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:23:53 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:23:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:23:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:23:55 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:23:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6d3d657061c736ea51196e70e9290f0a1b35bcf5ab3298d7d9ffc6a695ac60`  
		Last Modified: Sat, 19 Sep 2026 01:24:16 GMT  
		Size: 156.4 MB (156401961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218ac8ad5f9360ae481139e88ae346c48acd7d685aff3cabc751217d05967613`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 20.0 MB (19956720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcebf71ca8cdff964c8c3d8e819e3c844fc7688fab286f3f60576e7649658269`  
		Last Modified: Sat, 19 Sep 2026 01:24:13 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4828511dc979771716bf57d4ff0625d33f4ab1e2a26f3d9f1f0ea87989814a6`  
		Last Modified: Sat, 19 Sep 2026 01:24:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:ed1bfe61f2372b82e846e4308c093b3f2a4b3704e32960f8bcece3a1526abbbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab53a5d7edd98d8a3d75801db0b544428e19664a38bb3732e84ca5a41abc2c25`

```dockerfile
```

-	Layers:
	-	`sha256:1fd7c2b798dbbaa2f9259ba90709157860e3323f7655f5f1fd2eb90c7449a489`  
		Last Modified: Sat, 19 Sep 2026 01:24:13 GMT  
		Size: 4.3 MB (4291432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f24b3d173de7fcb2c053ed818c8552185789de3f10f67e8ddcfb29f4b1cda4aa`  
		Last Modified: Sat, 19 Sep 2026 01:24:12 GMT  
		Size: 18.5 KB (18532 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:36f1794f4e1ceb6f574a2a3c7d277d6c8bf3b3749d5f61f81b48cbeaa579a1b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235480506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3a443778b73d3a2ea40ea56ddb9bec668aaf397825a0b74ed05110748497ca`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:20:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:20:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:20:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:20:30 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:20:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:20:30 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:05:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:05:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:05:16 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:05:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:05:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:05:26 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:05:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f14408da35d1f050a1b6d9bf3b1a019bc9d47db0dbdeb7a4fa6d6c3e4a0c970`  
		Last Modified: Fri, 04 Sep 2026 00:22:07 GMT  
		Size: 158.3 MB (158274895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d896ef768c648f9b83a9abcf1792ff6a3abf4fb914791388d4785c869cdcac7`  
		Last Modified: Wed, 09 Sep 2026 11:05:52 GMT  
		Size: 20.3 MB (20348189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e6b6b02fb96c05f2734e399f9620c134890395d429eadc748badbd37bf2976`  
		Last Modified: Wed, 09 Sep 2026 11:05:51 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c615a344a836d4614153353f5195d54fb932dd3eaa2996ac8af6203732beb4`  
		Last Modified: Wed, 09 Sep 2026 11:05:51 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:9a18b61376ed1e12a5efd9bb224469183ff8bb05a209c06b7adf0520d59b6739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4312074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:611d67575e25a856c7370b6a9979a122020e3e229dab20e3259ad88bc581a37b`

```dockerfile
```

-	Layers:
	-	`sha256:5a7795d8a367e3b4c58eb835e8149f00ae95a5305c98bd0a3a4395494c4a6115`  
		Last Modified: Wed, 16 Sep 2026 10:50:49 GMT  
		Size: 4.3 MB (4293630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35a75d448a80de1cfb7ba26b4b8cc057b77d5b8d857b0392bedca4637f1d9717`  
		Last Modified: Wed, 16 Sep 2026 10:50:49 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json
