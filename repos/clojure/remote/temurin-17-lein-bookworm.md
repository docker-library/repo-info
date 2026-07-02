## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:b0d99fad2ad3006ecf18741c6f356e9bbf601ae5cb24c84f5c21fb2f07f4b20e
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

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:0d78fc30c8cb01aa871d3c75e48f2eff46941e8ef24b1b73c704b342a94477b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219041788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38befbb75c39a75eab89d10b104b30883cc6121d91174f09f50d1fe265f74577`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:49:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:46 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:49:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:49:46 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:50:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:50:51 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:50:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:50:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:50:52 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:50:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661758e0304d35dd444c771c3d1b971da28ee108b79b1be21227933d7bada6aa`  
		Last Modified: Thu, 02 Jul 2026 05:51:15 GMT  
		Size: 145.9 MB (145906310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3abf23b0d95f70c9b9931b1c5714be6cde22b0133613063cdf1c226c81e3aa1`  
		Last Modified: Thu, 02 Jul 2026 05:51:11 GMT  
		Size: 20.1 MB (20117639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47523748d8bb3be117bbbf2d23e6074dac40c2236097a70fec32d1e9071db27f`  
		Last Modified: Thu, 02 Jul 2026 05:51:10 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f56b59775a3141fbdd824690d94aa01237d4c9861f1e6bb65e8f68225b107f`  
		Last Modified: Thu, 02 Jul 2026 05:51:09 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:88c80ba5af6d290aa4dbde45eb97816fe1e550491fbb2f799c2ca4031d8e5314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4301756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1389cabbf96d3e061deab727d0bca4e8bc8dfd4de16797948f5a8aa666f697a7`

```dockerfile
```

-	Layers:
	-	`sha256:1bfcdd5bf941a35356ad21ed9e907156a9e108a53146befc5cf89a491aaf3ecc`  
		Last Modified: Thu, 02 Jul 2026 05:51:10 GMT  
		Size: 4.3 MB (4284018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:698c6cb2e5bf0b9c0773ee094a0561a858efb47704a7a6674891c001fb14a2e2`  
		Last Modified: Thu, 02 Jul 2026 05:51:09 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:70ca096d30557ed235b4005d1a7c97575d433c000ab829898ea5d706af84df09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.6 MB (217568997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ad16c6362bf1689ddc9422c60c6d78477c9babe67eb35b0184ab8c7827a8a2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:50:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:18 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:50:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:50:18 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:51:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:51:26 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:51:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:51:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb71b6708a73fd1f641ed695939616d4704b7b8549aec6d419b8cdaafae6226`  
		Last Modified: Thu, 02 Jul 2026 05:51:49 GMT  
		Size: 144.7 MB (144724318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0076a5c264d12b0796b9796792a807b7d6e21eb394422845f99c3c79dfeede`  
		Last Modified: Thu, 02 Jul 2026 05:51:46 GMT  
		Size: 19.9 MB (19939846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90a6bb8b7a6805f69a315edff41e1487e62363c12139e41eeff96aa06abf946`  
		Last Modified: Thu, 02 Jul 2026 05:51:46 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c03cfe986ac7c1276bdb459030194c1bf70861467fe1844a03e9f3dda5c27724`  
		Last Modified: Thu, 02 Jul 2026 05:51:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:028e1881ea32ee540edb336c24b12a45f868a52cf48a71d5713eb03d227a0840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4301492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e1882d9fd696293616aef064fc6317eb7f5b2277695259453ceb6a4b53a2ffa`

```dockerfile
```

-	Layers:
	-	`sha256:ba1367a5a6ad6d2b3334cc230019814f222fabd33aa569eefd4038acdd2984e7`  
		Last Modified: Thu, 02 Jul 2026 05:51:46 GMT  
		Size: 4.3 MB (4283633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53dbdfa8f33a0c14f124f1f677c6e737f7f022c89d05c250df40b0daa98c103f`  
		Last Modified: Thu, 02 Jul 2026 05:51:45 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:503ee2f24487d5dd2d2d6abe1cb9ef99742f01e6cd8d15efc9ac36e0ad6ba686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.0 MB (222960784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14997e7be94255949e655e97da7f3a621c77e5cd2374b5d822fb9a23adafa4e5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:05:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:05:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:05:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:05:31 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:05:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:05:31 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:07:56 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:07:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:07:56 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:07:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:07:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:07:59 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:07:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23318d964605b71f28c3da76366427e3b1abc150181347f2428bac212637d453`  
		Last Modified: Thu, 02 Jul 2026 07:08:38 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9019f5fdca1ff2778f529c9f73a57175689d273e2a446ec152b97a758b5072`  
		Last Modified: Thu, 02 Jul 2026 07:08:35 GMT  
		Size: 20.3 MB (20332104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f93fb0eaa43c703a0823e9abe1056ce71296904edb19c22ede9e5374771add`  
		Last Modified: Thu, 02 Jul 2026 07:08:34 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ec84cc95bd17c7f562bf65f054113dd163b96e278c0db3db1031a9dfec84ab`  
		Last Modified: Thu, 02 Jul 2026 07:08:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0fe36ed699b1d7c995587910966848a173b5b8392cb045c862e7e7bcd1ee8ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2682c60e3ff54863e5cf790891d88bef5a11b99be9f5d4009720343b7c80f94`

```dockerfile
```

-	Layers:
	-	`sha256:40b76231dfc8129ecde7acc2a50c7b1d4879e1b8bd3b4b1693d04c17b9642246`  
		Last Modified: Thu, 02 Jul 2026 07:08:34 GMT  
		Size: 4.3 MB (4285879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de2193d350c8045afc4f92d16f38f93ef6d3db0ac21abf8d485e69de94fc58cf`  
		Last Modified: Thu, 02 Jul 2026 07:08:33 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:f032f9138acba0b898935bdce0d6e613461f6bd557b5957ef40cd0ac72a6a194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207358093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06e7fd900fb70ca7d7246254f7244841974b4c326666cf5ac8b869c28c836401`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:47:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:51 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:47:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:47:51 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:48:50 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:48:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:48:50 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:48:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:48:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:48:51 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:48:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb65d9064285df5755315f62202dcaf9701d230113bfd88a5c3a37d07f8adc6`  
		Last Modified: Thu, 02 Jul 2026 05:49:16 GMT  
		Size: 135.9 MB (135910483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2995911c11f4f01dcfc475eabe1e2d11afef483bc351785ba5d7288f3b572e9`  
		Last Modified: Thu, 02 Jul 2026 05:49:14 GMT  
		Size: 19.8 MB (19770303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d67566de9002aedf898b6bfd8c253146caeca11830d9403bd35421d32a2820`  
		Last Modified: Thu, 02 Jul 2026 05:49:14 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc76a1a56ceeeaabf0dbf39251e906296565af0b62a017b7d2a671f25156b26`  
		Last Modified: Thu, 02 Jul 2026 05:49:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c3b71640f510e245c77045a672c7f4e3ebd6114d4479652f3477ad3cd85769d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4293570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e64fa91c4315c58667e136b495186de92a52ba14ada4feaa329710aa5a95aa`

```dockerfile
```

-	Layers:
	-	`sha256:3555a7aaa993b09cc8feb44304fc702566380f9fefb4640c5a4af9c73422972c`  
		Last Modified: Thu, 02 Jul 2026 05:49:14 GMT  
		Size: 4.3 MB (4275832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19d80e3cec194956189d8005ff18b2d148066a4d69b4bfda6b1b1242adbafa24`  
		Last Modified: Thu, 02 Jul 2026 05:49:14 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json
