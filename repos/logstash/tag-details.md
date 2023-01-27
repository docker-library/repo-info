<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:7.17.8`](#logstash7178)
-	[`logstash:8.6.0`](#logstash860)

## `logstash:7.17.8`

```console
$ docker pull logstash@sha256:17a4f64e9cf592090d27ae04f82d29cf6cd8d0193aee4ddbc98d3d48785aba7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `logstash:7.17.8` - linux; amd64

```console
$ docker pull logstash@sha256:bfd7e943403fcb9bbb9f5d9935438a0645bea281e265fa17d2aaaa8c36a32f40
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.3 MB (439327352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450ca8ef458a01eb35cefe29b987ce2bf3cceaa59bdd0680e27f61473b5c6b08`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 25 Oct 2022 01:53:34 GMT
ADD file:7633003155a1059419aa1a6756fafb6e4f419d65bff7feb7c945de1e29dccb1e in / 
# Tue, 25 Oct 2022 01:53:35 GMT
CMD ["bash"]
# Wed, 30 Nov 2022 16:27:53 GMT
RUN for iter in {1..10}; do export DEBIAN_FRONTEND=noninteractive && apt-get update -y && apt-get upgrade -y && apt-get install -y procps findutils tar gzip curl && apt-get install -y locales && apt-get clean all && locale-gen 'en_US.UTF-8' &&     apt-get clean metadata && exit_code=0 && break || exit_code=$? &&     echo "packaging error: retry $iter in 10s" &&     apt-get clean all && apt-get clean metadata && sleep 10; done;     (exit $exit_code)
# Wed, 30 Nov 2022 16:27:54 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000        --home /usr/share/logstash --no-create-home       logstash
# Wed, 30 Nov 2022 16:28:18 GMT
RUN curl -Lo - http://localhost:8000/logstash-7.17.8-linux-$(arch).tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-7.17.8 /usr/share/logstash && chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     mkdir /licenses/ &&     mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&     mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Wed, 30 Nov 2022 16:28:21 GMT
WORKDIR /usr/share/logstash
# Wed, 30 Nov 2022 16:28:21 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Nov 2022 16:28:22 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Nov 2022 16:28:22 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Wed, 30 Nov 2022 16:28:22 GMT
ADD file:83ab096464b764c812ae68c2872c05d48ee1620e6a1629948d52c13ac6dcfe11 in config/logstash.yml 
# Wed, 30 Nov 2022 16:28:22 GMT
ADD file:4f39d77a8986c28d67e673d4691e69ca9c175574128b0819977c2d1bb0d6e950 in config/ 
# Wed, 30 Nov 2022 16:28:22 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Wed, 30 Nov 2022 16:28:22 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Wed, 30 Nov 2022 16:28:23 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 30 Nov 2022 16:28:23 GMT
ADD file:fd9d0a7164e8960b5937497c683f797308c938637accbdddf5785afd2b9bf57b in /usr/local/bin/ 
# Wed, 30 Nov 2022 16:28:23 GMT
ADD file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Wed, 30 Nov 2022 16:28:23 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Wed, 30 Nov 2022 16:28:23 GMT
USER 1000
# Wed, 30 Nov 2022 16:28:23 GMT
EXPOSE 5044 9600
# Wed, 30 Nov 2022 16:28:24 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=7.17.8 org.opencontainers.image.version=7.17.8 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2022-11-30T16:12:02+00:00 org.opencontainers.image.created=2022-11-30T16:12:02+00:00
# Wed, 30 Nov 2022 16:28:24 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:eaead16dc43bb8811d4ff450935d607f9ba4baffda4fc110cc402fa43f601d83`  
		Last Modified: Fri, 21 Oct 2022 03:03:39 GMT  
		Size: 28.6 MB (28577834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f823d6208889ffeec2b453ff808f856aca37c98b869052134d61fab9e4c2a83f`  
		Last Modified: Thu, 08 Dec 2022 19:23:16 GMT  
		Size: 41.9 MB (41886332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc931784f49d637e75f3beab5792d3585024b55a98554c0df3af71cbf325dee`  
		Last Modified: Thu, 08 Dec 2022 19:23:11 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce68bbfd60ce0775b48aecf3826d2fa600983b6345c628351578584c01847202`  
		Last Modified: Thu, 08 Dec 2022 19:23:41 GMT  
		Size: 367.1 MB (367086253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837cfbff93fc00a712459958a6578e9be57f1b62b7a3ff27aa03c640d08747d0`  
		Last Modified: Thu, 08 Dec 2022 19:23:11 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ec5d04021fe93edb4271dcb5228c5c9ab51ab2a4f0bb91b0f9f9cffda889cc`  
		Last Modified: Thu, 08 Dec 2022 19:23:11 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed76ef861142c461be3fd9fc0ceef0d7e55926d3714c716a0ebe3d9a1f28c02`  
		Last Modified: Thu, 08 Dec 2022 19:23:09 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d8b7581e187ca8338f6115c685f4332777ec16c63ef4bef968ef90163261e1`  
		Last Modified: Thu, 08 Dec 2022 19:23:09 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af975d8f765d1402150b7301caee24ee8ddba96bdc4f761896462669f2878cc`  
		Last Modified: Thu, 08 Dec 2022 19:23:09 GMT  
		Size: 2.9 KB (2854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2cb522f5402e501bbd9c459965e9db6d08c8c4a21a01d14d9388e21f9bc19b`  
		Last Modified: Thu, 08 Dec 2022 19:23:09 GMT  
		Size: 1.8 MB (1769836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f480fcc2337e9cfb076499d9bf3f68bdb6e99cd32c12dd92130b8be83c1a90e`  
		Last Modified: Thu, 08 Dec 2022 19:23:09 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f480fcc2337e9cfb076499d9bf3f68bdb6e99cd32c12dd92130b8be83c1a90e`  
		Last Modified: Thu, 08 Dec 2022 19:23:09 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `logstash:7.17.8` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:4323ea4b30e049dc661914a40dedec354fe7633ea5001fffcc00137bac2d0a14
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.4 MB (428371129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27945e0b56b6a3545e7d303700a54fcecc7c243de1342a8781f9b829356e5a2f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Tue, 25 Oct 2022 05:54:59 GMT
ADD file:6784d0c4432f4f32d6ee4d96eedf33ea82d88ef6901c763665fa77c842621999 in / 
# Tue, 25 Oct 2022 05:54:59 GMT
CMD ["bash"]
# Wed, 30 Nov 2022 16:26:55 GMT
RUN for iter in {1..10}; do export DEBIAN_FRONTEND=noninteractive && apt-get update -y && apt-get upgrade -y && apt-get install -y procps findutils tar gzip curl && apt-get install -y locales && apt-get clean all && locale-gen 'en_US.UTF-8' &&     apt-get clean metadata && exit_code=0 && break || exit_code=$? &&     echo "packaging error: retry $iter in 10s" &&     apt-get clean all && apt-get clean metadata && sleep 10; done;     (exit $exit_code)
# Wed, 30 Nov 2022 16:26:56 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000        --home /usr/share/logstash --no-create-home       logstash
# Wed, 30 Nov 2022 16:27:14 GMT
RUN curl -Lo - http://localhost:8000/logstash-7.17.8-linux-$(arch).tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-7.17.8 /usr/share/logstash && chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     mkdir /licenses/ &&     mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&     mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Wed, 30 Nov 2022 16:27:18 GMT
WORKDIR /usr/share/logstash
# Wed, 30 Nov 2022 16:27:18 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 30 Nov 2022 16:27:18 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Nov 2022 16:27:19 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Wed, 30 Nov 2022 16:27:19 GMT
ADD file:83ab096464b764c812ae68c2872c05d48ee1620e6a1629948d52c13ac6dcfe11 in config/logstash.yml 
# Wed, 30 Nov 2022 16:27:19 GMT
ADD file:4f39d77a8986c28d67e673d4691e69ca9c175574128b0819977c2d1bb0d6e950 in config/ 
# Wed, 30 Nov 2022 16:27:19 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Wed, 30 Nov 2022 16:27:19 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Wed, 30 Nov 2022 16:27:19 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 30 Nov 2022 16:27:19 GMT
ADD file:23f506765f8d4b5886b9950ca845119ace9048b115940f036dd7345be6c4568b in /usr/local/bin/ 
# Wed, 30 Nov 2022 16:27:20 GMT
ADD file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Wed, 30 Nov 2022 16:27:20 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Wed, 30 Nov 2022 16:27:20 GMT
USER 1000
# Wed, 30 Nov 2022 16:27:20 GMT
EXPOSE 5044 9600
# Wed, 30 Nov 2022 16:27:20 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=7.17.8 org.opencontainers.image.version=7.17.8 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2022-11-30T16:13:53+00:00 org.opencontainers.image.created=2022-11-30T16:13:53+00:00
# Wed, 30 Nov 2022 16:27:20 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:4e7e0215f4adc2c48ad9cb3b3781e21d474b477587f85682c2e2975ae91dce9d`  
		Last Modified: Tue, 25 Oct 2022 05:55:59 GMT  
		Size: 27.2 MB (27195998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3970fbd9e1b2059419309efd1cb8d93c574c9739161b8c4a1968daa470764eb3`  
		Last Modified: Thu, 08 Dec 2022 18:42:22 GMT  
		Size: 35.7 MB (35674529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a958d563f0cf47b4b0e259ce086b856a03e8f7f7a2129cfcb12d60d32ad72b4`  
		Last Modified: Thu, 08 Dec 2022 18:42:18 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416eb8b4e716336d88e9381943bba7a44800aa38d1fc1b4246688b20a129866a`  
		Last Modified: Thu, 08 Dec 2022 18:42:44 GMT  
		Size: 363.8 MB (363843751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13361744da54fd558e3c5c87a8797099bceda33a7a171e5bdbe7d58835457cca`  
		Last Modified: Thu, 08 Dec 2022 18:42:18 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdd9fd0789aca318368669002f393ddae5c8e255c32597ac04410c5c35ffdbb`  
		Last Modified: Thu, 08 Dec 2022 18:42:18 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96f667f10d4ec73b30cfbc3238e215cba2ff172173c5e6a01f867bf42ed1076`  
		Last Modified: Thu, 08 Dec 2022 18:42:16 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79548d93521ac7515eba3399f8b931b790d595670f3b05b47adb3494dd460da4`  
		Last Modified: Thu, 08 Dec 2022 18:42:16 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9509c3215982bc7ce20b3c294169ff34deb99b714974896e34a12939c5a5649f`  
		Last Modified: Thu, 08 Dec 2022 18:42:16 GMT  
		Size: 2.9 KB (2851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8b20dee9e55523efc693085f7b65b9af0103b5bf58807beab089d7498c7a98`  
		Last Modified: Thu, 08 Dec 2022 18:42:16 GMT  
		Size: 1.6 MB (1649735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7637ec0a45845b9ad28908406f8e6e84b70116026791dce7d6a7769cf272f5aa`  
		Last Modified: Thu, 08 Dec 2022 18:42:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7637ec0a45845b9ad28908406f8e6e84b70116026791dce7d6a7769cf272f5aa`  
		Last Modified: Thu, 08 Dec 2022 18:42:16 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:8.6.0`

```console
$ docker pull logstash@sha256:9646a027c4b1d1bfc136ed22dc25755e809706fc29b093855ff10c45fb5ea9a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `logstash:8.6.0` - linux; amd64

```console
$ docker pull logstash@sha256:7c5349ea5e5a1adfecf35fd03a00b8e12f997cfc1897acfe60a1fe7a615ac1ad
```

-	Docker Version: 20.10.22
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.5 MB (413454059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c34d1abe55c50b898cf36fa7f447327284cef86f1b14fd8487904a4c99dfb6`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Wed, 04 Jan 2023 19:24:54 GMT
RUN for iter in {1..10}; do export DEBIAN_FRONTEND=noninteractive && apt-get update -y && apt-get upgrade -y && apt-get install -y procps findutils tar gzip curl && apt-get install -y locales && apt-get clean all && locale-gen 'en_US.UTF-8' &&     apt-get clean metadata && exit_code=0 && break || exit_code=$? &&     echo "packaging error: retry $iter in 10s" &&     apt-get clean all && apt-get clean metadata && sleep 10; done;     (exit $exit_code)
# Wed, 04 Jan 2023 19:24:55 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000        --home /usr/share/logstash --no-create-home       logstash
# Wed, 04 Jan 2023 19:25:17 GMT
RUN curl -Lo - http://localhost:8000/logstash-8.6.0-linux-$(arch).tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-8.6.0 /usr/share/logstash && chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     mkdir /licenses/ &&     mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&     mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt && find /usr/share/logstash -type d -exec chmod g+s {} \; && ln -s /usr/share/logstash /opt/logstash
# Wed, 04 Jan 2023 19:25:20 GMT
WORKDIR /usr/share/logstash
# Wed, 04 Jan 2023 19:25:20 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 04 Jan 2023 19:25:21 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2023 19:25:21 GMT
COPY file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Wed, 04 Jan 2023 19:25:21 GMT
COPY file:83ab096464b764c812ae68c2872c05d48ee1620e6a1629948d52c13ac6dcfe11 in config/logstash.yml 
# Wed, 04 Jan 2023 19:25:21 GMT
COPY file:4f39d77a8986c28d67e673d4691e69ca9c175574128b0819977c2d1bb0d6e950 in config/ 
# Wed, 04 Jan 2023 19:25:21 GMT
COPY file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Wed, 04 Jan 2023 19:25:21 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Wed, 04 Jan 2023 19:25:22 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 04 Jan 2023 19:25:22 GMT
COPY file:295fcd3c7b3544987eb327f15363a932206a187d79e4e2e9343558e813ed0506 in /usr/local/bin/ 
# Wed, 04 Jan 2023 19:25:22 GMT
COPY file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Wed, 04 Jan 2023 19:25:22 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Wed, 04 Jan 2023 19:25:22 GMT
USER 1000
# Wed, 04 Jan 2023 19:25:22 GMT
EXPOSE 5044 9600
# Wed, 04 Jan 2023 19:25:23 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.6.0 org.opencontainers.image.version=8.6.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2023-01-04T19:08:09+00:00 org.opencontainers.image.created=2023-01-04T19:08:09+00:00
# Wed, 04 Jan 2023 19:25:23 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31ac6457ef808ef5e65dc97a532ab74e69eddd1b2ab99895d29704561b1a747`  
		Last Modified: Wed, 11 Jan 2023 02:46:17 GMT  
		Size: 41.0 MB (40962023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4904e90aa80b6bbe58283792354296d1a959d73ebca76bc2cb80fffa0cc41794`  
		Last Modified: Wed, 11 Jan 2023 02:46:11 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141ee5e73a39d27eeaf1755b8837094e6d597c8f8e739b5a982de97418abcdcd`  
		Last Modified: Wed, 11 Jan 2023 02:46:39 GMT  
		Size: 342.1 MB (342137972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7aaf08d65e52f9fc457344386edc0235ac953ecde31e9bff51df17e0664350a`  
		Last Modified: Wed, 11 Jan 2023 02:46:11 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e1ccf379a79fac1322cf2254280984de028aac052675a5468631373a1c2599`  
		Last Modified: Wed, 11 Jan 2023 02:46:11 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043cd5d031cfbc67224488a16bc8fb3b381200860ff6afa968bc54e22f4db5f`  
		Last Modified: Wed, 11 Jan 2023 02:46:09 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574a08b8b6a8aba71108048e654c5028d7347c700f500562979455ed102c53a8`  
		Last Modified: Wed, 11 Jan 2023 02:46:09 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11adb41c060b369f0f11a0200f22ec33dba1e3da40df9fe53f19528df4965ad`  
		Last Modified: Wed, 11 Jan 2023 02:46:09 GMT  
		Size: 2.7 KB (2697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8af43f0eb0006c44b37ee3448006eacf62342518d48712f5d8d14a5867c9ba`  
		Last Modified: Wed, 11 Jan 2023 02:46:10 GMT  
		Size: 1.8 MB (1770248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a989da63f00827871495151cb712125dae6f75d196cdae39ee36da71a2f1c6`  
		Last Modified: Wed, 11 Jan 2023 02:46:09 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a989da63f00827871495151cb712125dae6f75d196cdae39ee36da71a2f1c6`  
		Last Modified: Wed, 11 Jan 2023 02:46:09 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `logstash:8.6.0` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:941afe02a73e7ed399b044c5aa92831b0da82a4c7d070e56003e09aead8f272d
```

-	Docker Version: 20.10.22
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.3 MB (404346231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7107c66f95761fb4240a9bf6e2d443d1499db585e22c1f218f9cf4476e5a06b4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Wed, 04 Jan 2023 19:25:41 GMT
RUN for iter in {1..10}; do export DEBIAN_FRONTEND=noninteractive && apt-get update -y && apt-get upgrade -y && apt-get install -y procps findutils tar gzip curl && apt-get install -y locales && apt-get clean all && locale-gen 'en_US.UTF-8' &&     apt-get clean metadata && exit_code=0 && break || exit_code=$? &&     echo "packaging error: retry $iter in 10s" &&     apt-get clean all && apt-get clean metadata && sleep 10; done;     (exit $exit_code)
# Wed, 04 Jan 2023 19:25:42 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000        --home /usr/share/logstash --no-create-home       logstash
# Wed, 04 Jan 2023 19:26:00 GMT
RUN curl -Lo - http://localhost:8000/logstash-8.6.0-linux-$(arch).tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-8.6.0 /usr/share/logstash && chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     mkdir /licenses/ &&     mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&     mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt && find /usr/share/logstash -type d -exec chmod g+s {} \; && ln -s /usr/share/logstash /opt/logstash
# Wed, 04 Jan 2023 19:26:03 GMT
WORKDIR /usr/share/logstash
# Wed, 04 Jan 2023 19:26:03 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 04 Jan 2023 19:26:03 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2023 19:26:03 GMT
COPY file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Wed, 04 Jan 2023 19:26:03 GMT
COPY file:83ab096464b764c812ae68c2872c05d48ee1620e6a1629948d52c13ac6dcfe11 in config/logstash.yml 
# Wed, 04 Jan 2023 19:26:03 GMT
COPY file:4f39d77a8986c28d67e673d4691e69ca9c175574128b0819977c2d1bb0d6e950 in config/ 
# Wed, 04 Jan 2023 19:26:03 GMT
COPY file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Wed, 04 Jan 2023 19:26:04 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Wed, 04 Jan 2023 19:26:04 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 04 Jan 2023 19:26:04 GMT
COPY file:ebf45853caf301e086cb99bcb44bc1c28bb3b329b79e25b9cd492c06fcffcc08 in /usr/local/bin/ 
# Wed, 04 Jan 2023 19:26:04 GMT
COPY file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Wed, 04 Jan 2023 19:26:04 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Wed, 04 Jan 2023 19:26:04 GMT
USER 1000
# Wed, 04 Jan 2023 19:26:05 GMT
EXPOSE 5044 9600
# Wed, 04 Jan 2023 19:26:05 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.6.0 org.opencontainers.image.version=8.6.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2023-01-04T19:10:43+00:00 org.opencontainers.image.created=2023-01-04T19:10:43+00:00
# Wed, 04 Jan 2023 19:26:05 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c588a842962930d4d2208952cb7ee774172f8365921b6b4a75a241a68366a58c`  
		Last Modified: Wed, 11 Jan 2023 00:48:52 GMT  
		Size: 34.6 MB (34586162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c036687d61e1d9c2b865d5bc48d29f1a8538ec53c6d88e000402f4593d0ada0`  
		Last Modified: Wed, 11 Jan 2023 00:48:49 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e790cde41bc656103f1c4e3f6b013ab7944dbef8f2f43dfef05a8a3dfb372885`  
		Last Modified: Wed, 11 Jan 2023 00:49:11 GMT  
		Size: 340.9 MB (340911459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8198aabcbffbf1710c23938b0750e706c0c5daa908241367e6b715f15b0486f`  
		Last Modified: Wed, 11 Jan 2023 00:48:49 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9be29aff1c8da93d996bd28de7ee1731fd75dc01331542844b4700ce6cbcecc`  
		Last Modified: Wed, 11 Jan 2023 00:48:49 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df45c70556a5cbf26a1c51604efd448fb62b9f28684b65b9c87fa6fd805764d6`  
		Last Modified: Wed, 11 Jan 2023 00:48:47 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c167d5f50b10de364d0235f22361835864de6362926dbd44966e7db6ed3920`  
		Last Modified: Wed, 11 Jan 2023 00:48:47 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a2aabc7268e94fc5dc11eaa3ac40f074eb2e05235897a66d6eccb1a805d4cb`  
		Last Modified: Wed, 11 Jan 2023 00:48:47 GMT  
		Size: 2.7 KB (2698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7c7fc0386c36966b439ed0236df44a463a34c180488000da0cd04ee1f9a70d`  
		Last Modified: Wed, 11 Jan 2023 00:48:47 GMT  
		Size: 1.6 MB (1648497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a48ac025c55826112d528d45f7fa7efbd96d408cb4c821210a1dce094fcac95`  
		Last Modified: Wed, 11 Jan 2023 00:48:47 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a48ac025c55826112d528d45f7fa7efbd96d408cb4c821210a1dce094fcac95`  
		Last Modified: Wed, 11 Jan 2023 00:48:47 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
