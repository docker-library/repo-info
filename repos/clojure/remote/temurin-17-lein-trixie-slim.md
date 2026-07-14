## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:9a98edc866dd399f0a94ba48854d383703071ffa17f6ef77ecf37360508d8bfe
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

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0518072ef7f76a03de79c38e1e070cc7fa98151254c8852358296cecb5005c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196958505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e27f7a1332c2942729c7b4c9a7a8537843beef6540b776322c5963144ecf8af`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:18:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:18:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:18:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:18:41 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:18:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:18:41 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:19:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:19:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:19:50 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:19:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:19:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:19:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:19:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f5474c74175f29b94b75a9327b11a60ac4462eedbc250daae2de77562de050`  
		Last Modified: Tue, 14 Jul 2026 02:19:17 GMT  
		Size: 145.9 MB (145906310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba8c703554f8b1408e2ea3e456f3ecbbced4e9b4e0a5844bf6dd13938b9f2a1`  
		Last Modified: Tue, 14 Jul 2026 02:20:07 GMT  
		Size: 16.8 MB (16755656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e92b307607077e53dece98e377b3f853840addfbbac3c94c740824a3e685dc0`  
		Last Modified: Tue, 14 Jul 2026 02:20:07 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fbc1e8728e18714059203b04a4015c7abecd4145fed68b574a66d854deea298`  
		Last Modified: Tue, 14 Jul 2026 02:20:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d28d337aee9f8b4db4c39c1cbdc57b8c65be0f40c78873ce7e82cfc2ef826344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f032323de75bb534eafc664a8474503e1c8245905944be2dece510c59ed1a3f1`

```dockerfile
```

-	Layers:
	-	`sha256:6c4bb954692a084b8e0d7aa968eedd07661e1d47959f022df0d7c52a3cf34b26`  
		Last Modified: Tue, 14 Jul 2026 02:20:07 GMT  
		Size: 2.4 MB (2367117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5cdfdd14e948162d426caeef978652fba7bf5b72fffad2fdf904344b249ef42`  
		Last Modified: Tue, 14 Jul 2026 02:20:07 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a14a85cab1d540aa55285adc6721baa37276024e52a9615a782a211b9bfc7752
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196104740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2239f7c2ba37256c9cade5e56dd1ef356bad2a06a8985669b97f1477f568cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:25:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:25:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:25:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:25:37 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:25:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:25:37 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:26:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:26:56 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:26:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:26:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa2a4f05d0e4ff67c513719270d0ee8b8ab81d3eed9d9a269f140ccfaa6d27e`  
		Last Modified: Tue, 14 Jul 2026 02:27:18 GMT  
		Size: 144.7 MB (144724317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44890db2d4192f105defe109d4238d580cc58c196d5be6ec4351370e739d3412`  
		Last Modified: Tue, 14 Jul 2026 02:27:15 GMT  
		Size: 16.7 MB (16721071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b818000246b5596294b983614ca5ae9d91482a47f99b943602ed175a10353f58`  
		Last Modified: Tue, 14 Jul 2026 02:27:15 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32dd22338758b750be1204ffd0945f3bc36129be1147fc0728dda1619cdf94d0`  
		Last Modified: Tue, 14 Jul 2026 02:27:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e4be0dea0135710692eb3ecb909bf68f753839e5db076dababa31b74f15b0aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1b6516c52fe18248970b7b9a9718004deb9e2579a9324e3e671f2fe50024f9`

```dockerfile
```

-	Layers:
	-	`sha256:cc8df3d1c064862891100fc2218900900df62f4fa15bd33dd0801b239cf446b9`  
		Last Modified: Tue, 14 Jul 2026 02:27:15 GMT  
		Size: 2.4 MB (2366727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:118cb30822095c657d4b9784574b91f8c3ab77159e8d57585059773393b92417`  
		Last Modified: Tue, 14 Jul 2026 02:27:14 GMT  
		Size: 17.9 KB (17873 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bc03465bc99a368dcb68eb345cd81a0a7bc9c5f9c72bddb1fb650a68b448f5b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200665235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730ceaffb575f58928b141442d39018e387cc443fcdde978833e0c92853d4f47`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:30:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:30:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:30:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:30:05 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 08:30:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 08:30:05 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 09:12:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 09:12:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 09:12:51 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 09:12:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 09:12:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 09:12:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 09:12:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8720ca311664529620a125fd330bc746519e60c196880b637985787701431dd6`  
		Last Modified: Tue, 14 Jul 2026 08:31:22 GMT  
		Size: 145.8 MB (145766113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454685e606712cb243db9d861704d7d8dba9cb5dc9fab460317dce8946f86832`  
		Last Modified: Tue, 14 Jul 2026 09:13:12 GMT  
		Size: 16.8 MB (16781998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695c9127afed58f82c691229ee0151939e383d354312f14633411b6b8ef4f354`  
		Last Modified: Tue, 14 Jul 2026 09:13:11 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61de4f8eabe4b0ceb6c3456fb48eda255f1d8994bcb7524e0a97b32bb2009ec`  
		Last Modified: Tue, 14 Jul 2026 09:13:11 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:14fe7328dd880423f9780422ee86e9e45cc7dfe87f11c11d0190a39971cf204f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf0d0955cb1536714bcc928dd0b6f04d899640e1531d8ecf0c185fedf190fe2`

```dockerfile
```

-	Layers:
	-	`sha256:e707bf8716bc6849246af4b882c0a4b8b387d8c407de5abcd1cf55c718054bad`  
		Last Modified: Tue, 14 Jul 2026 09:13:11 GMT  
		Size: 2.4 MB (2368097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a6d0844f43a45179dce38fa2618ffbbd7f881f1423071a9d0aaeab2e63b298f`  
		Last Modified: Tue, 14 Jul 2026 09:13:11 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:f4d2dde5f9895a9f6e1fbb44479210b039842a7904308cf630d80df1870dd047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187052623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d932f57652034a1da44bf4002a84a4054911c50c6fa6165a62f494a8bc085cc8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:28:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:28:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:28:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:28:33 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:28:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:28:33 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:29:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:29:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:29:38 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:29:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:29:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:29:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:29:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935fa8188e1638b6c2aefff3f233ec4e32a40a42b3b1547563d79e1a61784473`  
		Last Modified: Tue, 14 Jul 2026 04:30:04 GMT  
		Size: 135.9 MB (135910419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da4c305e399165a81876c913ea2f7168ceaf73ca1e3175e3fe11684b0273474`  
		Last Modified: Tue, 14 Jul 2026 04:30:01 GMT  
		Size: 16.8 MB (16779960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee32453058696d85559796fdf08793a86950ae06ec7c1edc0f5d6185d4e172b4`  
		Last Modified: Tue, 14 Jul 2026 04:30:01 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d033c682d618e2589b21cac645db940d49771c81e7f4dd4ecb15979d0a7afda`  
		Last Modified: Tue, 14 Jul 2026 04:30:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bc93398dd3a852631bf28189cc5104c9f9f82c503c76c603168853e24f859e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2381297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec499e6ed830da0f3b9f1dd3875c0542ddd34d82d229fa0aca9214f40af9f50c`

```dockerfile
```

-	Layers:
	-	`sha256:8d04355502c7dba766a6391246934c7711235e15da09a96d9b53fddbddad7554`  
		Last Modified: Tue, 14 Jul 2026 04:30:01 GMT  
		Size: 2.4 MB (2363544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:216ec77f897ee878d13392cee98fbb539853af60f16190b08a54ea64534d7e83`  
		Last Modified: Tue, 14 Jul 2026 04:30:01 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json
